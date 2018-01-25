require 'rake/testtask'
require 'timeout'
require_relative './rake/stage.rb'

@staging_server = Stage.new
@staging_server.name = 'staging_server'
@staging_server.hostname = 'NMA02'
@staging_server.username = 'wmstools'
@staging_server.password = 'Nakupelle7'
@staging_server.path = '/home/wmstools/work/wmsTools/server_staging'
@staging_server.port = 8080
@staging_server.control_port = 8086
@staging_server.change_log_file = '/home/wmstools/work/wmsTools/server_staging/server/views/change_log.erb'
@staging_server.rack_file = 'server.ru'

@staging_agent = Stage.new
@staging_agent.name = 'staging_agent'
@staging_agent.hostname = 'NMA02'
@staging_agent.username = 'wmstools'
@staging_agent.password = 'Nakupelle7'
@staging_agent.path = '/home/wmstools/work/wmsTools/agent_staging'
@staging_agent.port = 8081
@staging_agent.control_port = 8082
@staging_agent.change_log_file = '/home/wmstools/work/wmsTools/agent_staging/agent/deployment'
@staging_agent.rack_file = 'agent.ru'
@staging_agent.quota = 1

@production_server = Stage.new
@production_server.name = 'production_server'
@production_server.hostname = 'NMA02'
@production_server.username = 'wmstools'
@production_server.password = 'Nakupelle7'
@production_server.path = '/home/wmstools/work/wmsTools/server'
@production_server.port = 8080
@production_server.control_port = 8083
@production_server.change_log_file = '/home/wmstools/work/wmsTools/server/server/views/change_log.erb'
@production_server.rack_file = 'server.ru'

@production_agent_1 = Stage.new
@production_agent_1.name = 'production_agent_1'
@production_agent_1.hostname = 'NMA02'
@production_agent_1.username = 'wmstools'
@production_agent_1.password = 'Nakupelle7'
@production_agent_1.path = '/home/wmstools/work/wmsTools/agent'
@production_agent_1.port = 8081
@production_agent_1.control_port = 8082
@production_agent_1.change_log_file = '/home/wmstools/work/wmsTools/agent/agent/deployment'
@production_agent_1.rack_file = 'agent.ru'
@production_agent_1.quota = 4

task(:default => [:test, :deploy_staging_server, :deploy_staging_agent]) {}

task(:deploy_production_stack => [:test, :deploy_production_server, :deploy_production_agents]) {}

task :test do
  `bundle install`
  Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/test*.rb']
    t.verbose = true
  end
end

task :deploy_staging_server do
  @staging_server.deploy
  @staging_server.bundle_install
  @staging_server.restart
end

task :deploy_staging_agent do
  @staging_agent.deploy
  @staging_agent.modify_config(
      @staging_agent.path + '/agent/config/conf_development.rb',
      'THIS_AGENT_ID',
      "'#{@staging_agent.hostname}_staging'"
  )
  @staging_agent.modify_config(
      @staging_agent.path + '/agent/config/conf_development.rb',
      'QUOTA',
      @staging_agent.quota.to_s
  )
  @staging_agent.modify_config(
                    @staging_agent.path + '/agent/config/conf_common.rb',
                    'ENVIRONMENT',
                    "'staging'"
  )
  @staging_agent.bundle_install
  @staging_agent.restart
  @staging_agent.rollback_running_execs
end

task :deploy_production_server do
  @production_server.deploy
  @production_server.modify_config(
                        @production_server.path + '/server/config/conf_common.rb',
                        'ENVIRONMENT',
                        "'production'"
  )
  @production_server.bundle_install
  @production_server.restart
end

task :deploy_production_agents do
  agents = [@production_agent_1]
  agents.each do |agent|
    agent.deploy
    agent.modify_config(
        agent.path + '/agent/config/conf_production.rb',
        'THIS_AGENT_ID',
        "'#{agent.hostname}_production'"
    )
    agent.modify_config(
        agent.path + '/agent/config/conf_production.rb',
        'QUOTA',
        agent.quota.to_s
    )
    agent.modify_config(
        agent.path + '/agent/config/conf_common.rb',
        'ENVIRONMENT',
        "'production'"
    )
    agent.bundle_install
    agent.restart
    agent.rollback_running_execs
  end
end
