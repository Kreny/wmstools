Mail.defaults do
  delivery_method :smtp, :address => 'localhost',
  :port => 1025
end

DATA_SOURCE = 'mysql://wmsuser:SalvatorDali01@localhost/wmstools'
PORT = 80
PERFORMANCE_TEST_RESULTS_PER_PAGE = 30

TITANIUM_TRUNK_REGRESSION_TESTS_JOB = {
  :cron => '30 4 * * *',
  :suites_environments =>
  [
  {:suite => '[TIT] OBJECT EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] ATTRIBUTE SEARCH', :environment => 'TI_AUTO'},
  {:suite => '[TIT] QUICK SEARCH', :environment => 'TI_AUTO'},
  {:suite => '[TIT] EXPLORER', :environment => 'TI_AUTO'},
  {:suite => '[TIT] ACCESS RIGHTS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] DIGITIZING', :environment => 'TI_AUTO'},
  ]
}

# everything below this should be the same for both production and development

TEST_SUITES = [
  {:name => '[TIT] OBJECT EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] ATTRIBUTE SEARCH', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] QUICK SEARCH', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] EXPLORER', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] ACCESS RIGHTS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] DIGITIZING', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
]

TEST_PACKAGES = [
  {:name => 'FULL REGRESSION TEST',
  :suites => [
  '[TIT] OBJECT EDITOR',
  '[TIT] ATTRIBUTE SEARCH',
  '[TIT] QUICK SEARCH',
  '[TIT] EXPLORER',
  '[TIT] ACCESS RIGHTS',
  '[TIT] DIGITIZING',
  ]
  },
  {:name => '[TIT] OBJECT EDITOR',
  :suites => ['[TIT] OBJECT EDITOR'
  ]
  },
  {:name => '[TIT] ATTRIBUTE SEARCH',
  :suites => ['[TIT] ATTRIBUTE SEARCH'
  ]
  },
  {:name => '[TIT] QUICK SEARCH',
  :suites => ['[TIT] QUICK SEARCH'
  ]
  },
  {:name => '[TIT] EXPLORER',
  :suites => ['[TIT] EXPLORER'
  ]
  },
  {:name => '[TIT] ACCESS RIGHTS',
  :suites => ['[TIT] ACCESS RIGHTS'
  ]
  },
  {:name => '[TIT] DIGITIZING',
  :suites => ['[TIT] DIGITIZING'
  ]
  },
]

PERFORMANCE_TESTS = []

PIAZZA_SCREENS = [
  {:screen_number => 1, :environments => ['TI_AUTO']},
]

DELIVERY_SITE_TYPES = []

ENVIRONMENTS = [
  {:name => 'TI_AUTO', :wms_version => 'trunk'},
]
