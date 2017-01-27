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
  {:suite => '[TIT] BOOKMARKS AND PRESETS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] PLANS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] IDENTIFY SETTINGS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] SCALES', :environment => 'TI_AUTO'},
  {:suite => '[TIT] RELAY EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] EARTHING MEASUREMENT EDITOR', :environment => 'TI_AUTO'},
  {:suite => '[TIT] PIPES', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MEASUREMENT TOOL', :environment => 'TI_AUTO'},
  {:suite => '[TIT] USER MANAGEMENT', :environment => 'TI_AUTO'},
  {:suite => '[TIT] MAP EXPORT', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] ATTACHMENTS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] CATALOGUES', :environment => 'TI_AUTO'},
  {:suite => '[TIT] SCHEMA TEMPLATE', :environment => 'TI_AUTO'}, 
  {:suite => '[TIT] NETWORK CALCULATIONS', :environment => 'TI_AUTO'},
  {:suite => '[TIT] VEGETATION CLEARING', :environment => 'TI_AUTO'},
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
  {:name => '[TIT] BOOKMARKS AND PRESETS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] PLANS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] IDENTIFY SETTINGS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] SCALES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] RELAY EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] EARTHING MEASUREMENT EDITOR', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] PIPES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] MEASUREMENT TOOL', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},  
  {:name => '[TIT] USER MANAGEMENT', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] MAP EXPORT', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] ATTACHMENTS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] CATALOGUES', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] SCHEMA TEMPLATE', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] NETWORK CALCULATIONS', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
  {:name => '[TIT] VEGETATION CLEARING', :type => 'Suite', :environments => ['TI_AUTO'], :piazza => true, :default_number_of_tests => 10, :priority => 1, :project_file => 'TIT_gui_klepejir.xml'},
     
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
  '[TIT] BOOKMARKS AND PRESETS',
  '[TIT] PLANS',
  '[TIT] IDENTIFY SETTINGS',
  '[TIT] SCALES',
  '[TIT] RELAY EDITOR',
  '[TIT] EARTHING MEASUREMENT EDITOR',
  '[TIT] PIPES',
  '[TIT] MEASUREMENT TOOL',
  '[TIT] USER MANAGEMENT',
  '[TIT] MAP EXPORT',
  '[TIT] ATTACHMENTS',
  '[TIT] CATALOGUES',
  '[TIT] SCHEMA TEMPLATE',
  '[TIT] NETWORK CALCULATIONS',
  '[TIT] VEGETATION CLEARING',
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
  {:name => '[TIT] BOOKMARKS AND PRESETS',
   :suites => ['[TIT] BOOKMARKS AND PRESETS'
  ]
  },
  {:name => '[TIT] PLANS',
   :suites => ['[TIT] PLANS'
  ]
  },
  {:name => '[TIT] IDENTIFY SETTINGS',
  :suites => ['[TIT] IDENTIFY SETTINGS'
  ]
  },
  {:name => '[TIT] SCALES',
  :suites => ['[TIT] SCALES'
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
  {:name => '[TIT] MEASUREMENT TOOL',
  :suites => ['[TIT] MEASUREMENT TOOL'
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
  {:name => '[TIT] ATTACHMENTS',
  :suites => ['[TIT] ATTACHMENTS'
  ]
  },
  {:name => '[TIT] CATALOGUES',
  :suites => ['[TIT] CATALOGUES'
  ]
  },
  {:name => '[TIT] SCHEMA TEMPLATE',
  :suites => ['[TIT] SCHEMA TEMPLATE'
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
   
]

PERFORMANCE_TESTS = []

PIAZZA_SCREENS = [
  {:screen_number => 1, :environments => ['TI_AUTO']},
]

DELIVERY_SITE_TYPES = []

ENVIRONMENTS = [
  {:name => 'TI_AUTO', :wms_version => 'trunk'},
]
