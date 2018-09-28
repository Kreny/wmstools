Mail.defaults do
  delivery_method :smtp, :address => 'localhost',
  :port => 1025
end

DATA_SOURCE = 'mysql://wmsuser:SalvatorDali01@localhost/wmstools'
PORT = 80
PERFORMANCE_TEST_RESULTS_PER_PAGE = 30

TITANIUM_TRUNK_REGRESSION_TESTS_JOB = {
  #cron defines time when the tests are run
  :cron => '15 0 * * *',
  :suites_environments =>
  [
  {:suite => '[TIT] OBJECT EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] ATTRIBUTE SEARCH', :environment => 'TI_AUTO'},
  {:suite => '[TIT] QUICK SEARCH', :environment => 'TI_AUTO'},
  {:suite => '[TIT] EXPLORER', :environment => 'TI_AUTO'},
  {:suite => '[TIT] ACCESS RIGHTS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] DIGITIZING', :environment => 'TI_AUTO'},
  {:suite => '[TIT] IDENTIFY SETTINGS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] RELAY EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] EARTHING MEASUREMENT EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] PIPES', :environment => 'TI_AUTO'},
  {:suite => '[TIT] USER MANAGEMENT', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAP EXPORT', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] CATALOGUES', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] NETWORK CALCULATIONS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] VEGETATION CLEARING', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAINTENANCE HISTORY', :environment => 'TI_AUTO'},  
  {:suite => '[TIT] OTHER', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAINTENANCE WORK TASKS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAINTENANCE CHECK TASKS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MULTILINE MODIFICATION', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] QUERIES', :environment => 'TI_AUTO'},
  {:suite => '[TIT] CONTEXT MENU_S', :environment => 'TI_AUTO'},
  {:suite => '[TIT] CONTEXT MENU_F', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] JOB POINTS', :environment => 'TI_AUTO'}, 
  {:suite => '[PB] Others', :environment => 'PB_AUTO'},
  {:suite => '[PB] Projects', :environment => 'PB_AUTO'},
  {:suite => '[PB] Sub-projects', :environment => 'PB_AUTO'},
  {:suite => '[PB] Part budget', :environment => 'PB_AUTO'},
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
  {:name => '[TIT] IDENTIFY SETTINGS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] RELAY EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] EARTHING MEASUREMENT EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] PIPES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] USER MANAGEMENT', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] MAP EXPORT', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] CATALOGUES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] NETWORK CALCULATIONS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] VEGETATION CLEARING', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] MAINTENANCE HISTORY', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] OTHER', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] MAINTENANCE WORK TASKS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] MAINTENANCE CHECK TASKS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},    
  {:name => '[TIT] MULTILINE MODIFICATION', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] QUERIES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] CONTEXT MENU_S', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] CONTEXT MENU_F', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] JOB POINTS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[PB] Others', :type => 'Suite', :environments => ['PB_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'Project_Budgeting.xml'},
  {:name => '[PB] Projects', :type => 'Suite', :environments => ['PB_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'Project_Budgeting.xml'},
  {:name => '[PB] Sub-projects', :type => 'Suite', :environments => ['PB_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'Project_Budgeting.xml'},
  {:name => '[PB] Part budget', :type => 'Suite', :environments => ['PB_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'Project_Budgeting.xml'},
      ]

TEST_PACKAGES = [
  {:name => 'TIT FULL REGRESSION TEST',
  :suites => [
  '[TIT] OBJECT EDITOR',
  '[TIT] ATTRIBUTE SEARCH',
  '[TIT] QUICK SEARCH',
  '[TIT] EXPLORER',
  '[TIT] ACCESS RIGHTS',
  '[TIT] DIGITIZING',
  '[TIT] IDENTIFY SETTINGS',
  '[TIT] RELAY EDITOR',
  '[TIT] EARTHING MEASUREMENT EDITOR',
  '[TIT] PIPES',
  '[TIT] USER MANAGEMENT',
  '[TIT] MAP EXPORT',
  '[TIT] CATALOGUES',
  '[TIT] NETWORK CALCULATIONS',
  '[TIT] VEGETATION CLEARING',
  '[TIT] MAINTENANCE HISTORY',
  '[TIT] OTHER',
  '[TIT] MAINTENANCE WORK TASKS',  
  '[TIT] MAINTENANCE CHECK TASKS',
  '[TIT] MULTILINE MODIFICATION',
  '[TIT] QUERIES',
  '[TIT] CONTEXT MENU_S',
  '[TIT] CONTEXT MENU_F',
  '[TIT] JOB POINTS',
   ]
  },
  {:name => 'PB FULL REGRESSION TEST',
  :suites => [
  '[PB] Others',
  '[PB] Projects',
  '[PB] Sub-projects',
  '[PB] Part budget',
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
  {:name => '[TIT] IDENTIFY SETTINGS',
  :suites => ['[TIT] IDENTIFY SETTINGS'
  ]
  },
  {:name => '[TIT] RELAY EDITOR',
  :suites => ['[TIT] RELAY EDITOR'
  ]
  },
  {:name => '[TIT] EARTHING MEASUREMENT EDITOR',
  :suites => ['[TIT] EARTHING MEASUREMENT EDITOR'
  ]
  },
  {:name => '[TIT] PIPES',
  :suites => ['[TIT] PIPES'
  ]
  }, 
  {:name => '[TIT] USER MANAGEMENT',
  :suites => ['[TIT] USER MANAGEMENT'
  ]
  },
  {:name => '[TIT] MAP EXPORT',
  :suites => ['[TIT] MAP EXPORT'
  ]
  },
  {:name => '[TIT] CATALOGUES',
  :suites => ['[TIT] CATALOGUES'
  ]
  },
  {:name => '[TIT] NETWORK CALCULATIONS',
  :suites => ['[TIT] NETWORK CALCULATIONS'
  ]
  },
  {:name => '[TIT] VEGETATION CLEARING',
  :suites => ['[TIT] VEGETATION CLEARING'
  ]
  },
  {:name => '[TIT] MAINTENANCE HISTORY',
  :suites => ['[TIT] MAINTENANCE HISTORY'
  ]
  },    
  {:name => '[TIT] OTHER',
  :suites => ['[TIT] OTHER'
  ]
  },
  {:name => '[TIT] MAINTENANCE WORK TASKS',
  :suites => ['[TIT] MAINTENANCE WORK TASKS'
  ]
  },
  {:name => '[TIT] MAINTENANCE CHECK TASKS',
  :suites => ['[TIT] MAINTENANCE CHECK TASKS'
  ]
  },
  {:name => '[TIT] MULTILINE MODIFICATION',
  :suites => ['[TIT] MULTILINE MODIFICATION'
  ]
  },
  {:name => '[TIT] QUERIES',
  :suites => ['[TIT] QUERIES'
  ]
  },
  {:name => '[TIT] CONTEXT MENU_S',
  :suites => ['[TIT] CONTEXT MENU_S'
  ]
  },
  {:name => '[TIT] CONTEXT MENU_F',
  :suites => ['[TIT] CONTEXT MENU_F'
  ]
  },
  {:name => '[TIT] JOB POINTS',
  :suites => ['[TIT] JOB POINTS'
  ]
  },
  {:name => '[PB] Others',
    :suites => ['[PB] Others'
  ]
  },
  {:name => '[PB] Projects',
    :suites => ['[PB] Projects'
  ]
  },
  {:name => '[PB] Sub-projects',
    :suites => ['[PB] Sub-projects'
  ]
  },
  {:name => '[PB] Part budget',
    :suites => ['[PB] Part budget' 
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
  {:name => 'PB_AUTO', :wms_version => 'trunk'},
]
