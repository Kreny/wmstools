Mail.defaults do
  delivery_method :smtp, :address => 'inbound.tieto.com',
  :port => 587,
  :domain => 'www.tieto.com',
  :user_name => 'svc_wmsapp',
  :password => 'Ostrava123456',
  :authentication => 'login',
  :enable_starttls_auto => false
end

DATA_SOURCE = 'mysql://wmsuser:SalvatorDali01@localhost/wmstools'
PORT = 80
PERFORMANCE_TEST_RESULTS_PER_PAGE = 30

FORTUM_SMOKE_TESTS_JOB = {
  :cron => '30 4 * * *',
  :suites_environments =>
  [
  {:suite => '[F] SMOKE TESTS', :environment => 'FAT1'},
  {:suite => '[F] MAINTENANCE TESTS', :environment => 'FAT1'},
  {:suite => '[F] SMOKE TESTS', :environment => 'FAT4'},
  {:suite => '[F] MAINTENANCE TESTS', :environment => 'FAT4'},
  {:suite => '[F] SMOKE TESTS', :environment => 'FAT5'},
  {:suite => '[F] SMOKE TESTS', :environment => 'FAT12'},
  {:suite => '[F] SMOKE TESTS', :environment => 'DEV4'},
  ]
}

FORTUM_TRUNK_REGRESSION_TESTS_JOB = {
  :cron => '0 4 * * *',
  :suites_environments =>
  [
  {:suite => '[F] SMOKE TESTS', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 1', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 2', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 3', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 4', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 5', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 6', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 7', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 8', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 9', :environment => 'FAT1'},
  {:suite => '[F] REGRESSION TESTS 10', :environment => 'FAT1'},      
  {:suite => '[F] REGRESSION TESTS 11', :environment => 'FAT1'}, 
  {:suite => '[F] WEB SERVICE TESTS', :environment => 'FAT1'},
#  {:suite => '[F] REGRESSION TESTS GUI 1', :environment => 'FAT1'},
  ]
}

FORTUM_BRANCH_REGRESSION_TESTS_JOB = {
  :cron => '0 3 * * *',
  :suites_environments =>
  [
  {:suite => '[F] SMOKE TESTS', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 1', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 2', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 3', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 4', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 5', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 6', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 7', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 8', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 9', :environment => 'FAT4'},
  {:suite => '[F] REGRESSION TESTS 10', :environment => 'FAT4'},
  {:suite => '[F] WEB SERVICE TESTS', :environment => 'FAT4'},
#  {:suite => '[F] REGRESSION TESTS GUI 1', :environment => 'FAT4'},
  ]
}

#FORTUM_DEV4_REGRESSION_TESTS_JOB = {
#  :cron => '0 3 * * *',
#  :suites_environments =>
#  [
#  {:suite => '[F] SMOKE TESTS', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 1', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 2', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 3', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 4', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 5', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 6', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 7', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 8', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 9', :environment => 'DEV4'},
#  {:suite => '[F] REGRESSION TESTS 10', :environment => 'DEV4'},    
#  {:suite => '[F] WEB SERVICE TESTS', :environment => 'DEV4'},
##  {:suite => '[F] REGRESSION TESTS GUI 1', :environment => 'DEV4'},
#  ]
#}


FORTUM_PERFORMANCE_TESTS_JOB = {
  :cron => '*/10 5,22 * * *',
  :suites_environments =>
  [
  {:suite => '[F] PERFORMANCE TESTS', :environment => 'FAT1'},
  ]
}

FORTUM_LOAD_TESTS_JOB = {
  :cron => '0 2 * * *',
  :suites_environments =>
  [
  {:suite => '[F] LOAD TESTS', :environment => 'FAT1'},
  ]
}

FORTUM_INTEGRATION_TESTS_JOB = {
  :cron => '0 3 * * *',
  :suites_environments =>
  [
  {:suite => '[F] INTEGRATION TESTS', :environment => 'FAT1'},
  {:suite => '[F] INTEGRATION TESTS', :environment => 'FAT4'},
  {:suite => '[F] INTEGRATION TESTS', :environment => 'DEV4'},
  ]
}

HAFSLUND_TRUNK_REGRESSION_TESTS_JOB = {
  :cron => '0 5 * * *',
  :suites_environments =>
  [
  {:suite => '[H] REGRESSION TESTS 1', :environment => 'DEVHF02'},
  {:suite => '[H] REGRESSION TESTS 2', :environment => 'DEVHF02'},
  ]
}

# everything below this should be the same for both production and development

TEST_SUITES = [
  {:name => '[F] SMOKE TESTS', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 2, :priority => 10, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] WEB SERVICE TESTS', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 5, :priority => 20, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 1', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 32, :priority => 30, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 2', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 33, :priority => 40, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 3', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 24, :priority => 50, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 4', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 23, :priority => 60, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 5', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 18, :priority => 70, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 6', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 25, :priority => 80, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 7', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 24, :priority => 90, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 8', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 49, :priority => 100, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] REGRESSION TESTS 9', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => true, :default_number_of_tests => 18, :priority => 110, :project_file => 'Fortum_regression_benkepet.xml'},
  {:name => '[F] REGRESSION TESTS 10', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'DEV4'], :piazza => true, :default_number_of_tests => 5, :priority => 110, :project_file => 'Fortum_regression_benkepet.xml'},
  {:name => '[F] REGRESSION TESTS 11', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'DEV4'], :piazza => true, :default_number_of_tests => 39, :priority => 115, :project_file => 'Fortum_regression_benkepet.xml'},
#  {:name => '[F] REGRESSION TESTS GUI 1', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5'], :piazza => true, :default_number_of_tests => 10, :priority => 111, :project_file => 'Fortum_gui_benkepet.xml'},
  {:name => '[F] BUFFER TESTS', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'DEV4'], :piazza => false, :default_number_of_tests => 4, :priority => 120, :project_file => 'Fortum_regression_krenevla.xml', :buffer => true},
  {:name => '[F] LOAD TESTS', :type => 'Suite', :environments => ['FAT1'], :piazza => false, :priority => 130, :project_file => 'Fortum_regression_krenevla.xml', :load => true},
  {:name => '[F] MAINTENANCE TESTS', :type => 'Suite', :environments => ['FAT1', 'FAT4'], :piazza => false, :priority => 140, :project_file => 'Fortum_regression_krenevla.xml'},
  {:name => '[F] PERFORMANCE TESTS', :type => 'Suite', :environments => ['FAT1'], :piazza => false, :priority => 150, :project_file => 'Fortum_regression_krenevla.xml', :performance => true},
  {:name => '[F] INTEGRATION TESTS', :type => 'Suite', :environments => ['FAT1', 'FAT4', 'FAT5', 'FAT12', 'INT_BRANCH', 'INT_TRUNK', 'DEV4'], :piazza => true, :default_number_of_tests => 5, :priority => 151, :project_file => 'Fortum_regression_benkepet.xml'},
  {:name => '[H] REGRESSION TESTS 1', :type => 'Suite', :environments => ['DEVHF02', 'DEVHF01'], :piazza => true, :default_number_of_tests => 4, :priority => 210, :project_file => 'Hafslund_regression_krenevla.xml'},
  {:name => '[H] REGRESSION TESTS 2', :type => 'Suite', :environments => ['DEVHF02', 'DEVHF01'], :piazza => true, :default_number_of_tests => 10, :priority => 220, :project_file => 'Hafslund_regression_krenevla.xml'},
  {:name => '[H] BUFFER TESTS', :type => 'Suite', :environments => ['DEVHF02', 'DEVHF01'], :piazza => false, :default_number_of_tests => 2, :priority => 230, :project_file => 'Hafslund_regression_krenevla.xml', :buffer => true},
  {:name => '[HE] REGRESSION TESTS 1', :type => 'Suite', :environments => ['DEVHF02', 'DEVHF03'], :piazza => true, :default_number_of_tests => 4, :priority => 370, :project_file => 'Hafslund_elhub_regression_benkepet.xml'},
  {:name => '[HE] REGRESSION TESTS 2', :type => 'Suite', :environments => ['DEVHF02'], :piazza => true, :default_number_of_tests => 4, :priority => 380, :project_file => 'Hafslund_elhub_regression_benkepet.xml'},
  {:name => '[HE] BUFFER TESTS', :type => 'Suite', :environments => ['DEVHF03'], :piazza => false, :default_number_of_tests => 4, :priority => 390, :project_file => 'Hafslund_elhub_regression_benkepet.xml', :buffer => true},
]

TEST_PACKAGES = [
  {:name => 'FULL REGRESSION TEST',
  :suites => [
  '[F] SMOKE TESTS',
  '[F] WEB SERVICE TESTS',
  '[F] REGRESSION TESTS 1',
  '[F] REGRESSION TESTS 2',
  '[F] REGRESSION TESTS 3',
  '[F] REGRESSION TESTS 4',
  '[F] REGRESSION TESTS 5',
  '[F] REGRESSION TESTS 6',
  '[F] REGRESSION TESTS 7',
  '[F] REGRESSION TESTS 8',
  '[F] REGRESSION TESTS 9',
  '[F] REGRESSION TESTS 10',
  '[F] REGRESSION TESTS 11',
#  '[F] REGRESSION TESTS GUI 1',
  '[F] INTEGRATION TESTS',
  '[H] REGRESSION TESTS 1',
  '[H] REGRESSION TESTS 2',
  '[HE] REGRESSION TESTS 1',
  '[HE] REGRESSION TESTS 2',
  ]
  },
  {:name => '[F] SMOKE TESTS',
  :suites => ['[F] SMOKE TESTS'
  ]
  },
  {:name => '[F] REGRESSION TESTS 1',
  :suites => ['[F] REGRESSION TESTS 1'
  ]
  },
  {:name => '[F] REGRESSION TESTS 2',
  :suites => ['[F] REGRESSION TESTS 2'
  ]
  },
  {:name => '[F] REGRESSION TESTS 3',
  :suites => ['[F] REGRESSION TESTS 3'
  ]
  },
  {:name => '[F] REGRESSION TESTS 4',
  :suites => ['[F] REGRESSION TESTS 4'
  ]
  },
  {:name => '[F] REGRESSION TESTS 5',
  :suites => ['[F] REGRESSION TESTS 5'
  ]
  },
  {:name => '[F] REGRESSION TESTS 6',
  :suites => ['[F] REGRESSION TESTS 6'
  ]
  },
  {:name => '[F] REGRESSION TESTS 7',
  :suites => ['[F] REGRESSION TESTS 7'
  ]
  },
  {:name => '[F] REGRESSION TESTS 8',
  :suites => ['[F] REGRESSION TESTS 8'
  ]
  },
  {:name => '[F] REGRESSION TESTS 9',
  :suites => ['[F] REGRESSION TESTS 9'
  ]
  },
  {:name => '[F] REGRESSION TESTS 10',
  :suites => ['[F] REGRESSION TESTS 10'
  ]
  },
  {:name => '[F] REGRESSION TESTS 11',
  :suites => ['[F] REGRESSION TESTS 11'
  ]
  },
  {:name => '[F] LOAD TESTS',
  :suites => ['[F] LOAD TESTS'
  ]
  },
  {:name => '[F] MAINTENANCE TESTS',
  :suites => ['[F] MAINTENANCE TESTS'
  ]
  },
  {:name => '[F] WEB SERVICE TESTS',
  :suites => ['[F] WEB SERVICE TESTS'
  ]
  },
  {:name => '[F] PERFORMANCE TESTS',
  :suites => ['[F] PERFORMANCE TESTS'
  ]
  },
  {:name => '[F] BUFFER TESTS',
  :suites => ['[F] BUFFER TESTS'
  ]
  },
#  {:name => '[F] REGRESSION TESTS GUI 1',
#  :suites => ['[F] REGRESSION TESTS GUI 1'
#  ]
#  },
  {:name => '[F] INTEGRATION TESTS',
  :suites => ['[F] INTEGRATION TESTS'
  ]
  },
  {:name => '[H] REGRESSION TESTS 1',
  :suites => ['[H] REGRESSION TESTS 1'
  ]
  },
  {:name => '[H] REGRESSION TESTS 2',
  :suites => ['[H] REGRESSION TESTS 2'
  ]
  },
  {:name => '[HE] REGRESSION TESTS 1',
  :suites => ['[HE] REGRESSION TESTS 1'
  ]
  },
  {:name => '[HE] REGRESSION TESTS 2',
  :suites => ['[HE] REGRESSION TESTS 2'
  ]
  },
  {:name => '[HE] BUFFER TESTS',
  :suites => ['[HE] BUFFER TESTS'
  ]
  },
  {:name => '[H] BUFFER TESTS',
  :suites => ['[H] BUFFER TESTS'
  ]
  },
]

PERFORMANCE_TESTS = [
  {:test_suite_name => '[F] PERFORMANCE TESTS', :performance_measurement_points => [
  {:id => 'PERF001', :name => 'Create errand', :reference_value => 16000, :max_value => 20000},
  {:id => 'PERF002', :name => 'Add tariff', :reference_value => 550, :max_value => 2000},
  {:id => 'PERF003', :name => 'Create WO175', :reference_value => 6800, :max_value => 10000},
  {:id => 'PERF004', :name => 'Send ACK', :reference_value => 4500, :max_value => 10000},
  {:id => 'PERF005', :name => 'Report WO175', :reference_value => 31500, :max_value => 45000},
  {:id => 'PERF006', :name => 'Report WO235', :reference_value => 16000, :max_value => 25000},
  {:id => 'PERF007', :name => 'Report WO203', :reference_value => 13000, :max_value => 20000},
  {:id => 'PERF008', :name => 'Get errand', :reference_value => 2000, :max_value => 4000},    
  ]
  },
]

PIAZZA_SCREENS = [
  {:screen_number => 1, :environments => ['FAT1']},
  {:screen_number => 2, :environments => ['FAT4']},
  {:screen_number => 3, :environments => ['DEVHF03']},
  {:screen_number => 4, :environments => ['DEVHF02']},
  {:screen_number => 5, :environments => ['DEVHF01']},
  {:screen_number => 6, :environments => ['FAT5']},
  {:screen_number => 7, :environments => ['DEV7']},
  {:screen_number => 8, :environments => ['INT_BRANCH']},
  {:screen_number => 9, :environments => ['INT_TRUNK']},
  {:screen_number => 10, :environments => ['DEV4']},
  {:screen_number => 11, :environments => ['FAT12']},
]

DELIVERY_SITE_TYPES = [
  {:id => '[F] M1 1C', :name => '[F] M1 1C', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 100},
  {:id => '[F] M1 1C PTB RDR SelfRead Yes', :name => '[F] M1 1C PTB RDR SelfRead Yes', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 100},
  {:id => '[F] M1 1C PTB RDR SelfRead No', :name => '[F] M1 1C PTB RDR SelfRead No', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 100},
  {:id => '[F] M1 1C FULL RDR', :name => '[F] M1 1C FULL RDR', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 100},
  {:id => '[F] M1 2C', :name => '[F] M1 2C', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 50},
  {:id => '[F] T7 1C', :name => '[F] T7 1C', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 50},
  {:id => '[F] T1 1C MicroProduction', :name => '[F] T1 1C MicroProduction', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 50},
  {:id => '[F] T1 1C', :name => '[F] T1 1C', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 50},
  {:id => '[F] T1 2C', :name => '[F] T1 2C', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 50},
  {:id => '[F] T1 4C', :name => '[F] T1 4C', :environments => ['FAT1', 'FAT4', 'DEV4', 'FAT5'], :test_suite_name => '[F] BUFFER TESTS', :quota => 50},
  {:id => '[H] AMS Z31 1c', :name => '[H] AMS Z31 1c', :environments => ['DEVHF02'], :test_suite_name => '[H] BUFFER TESTS', :quota => 100},
  {:id => '[H] AMS Z31 2c', :name => '[H] AMS Z31 2c', :environments => ['DEVHF02'], :test_suite_name => '[H] BUFFER TESTS', :quota => 100},
  {:id => '[H] AMS Z32 1c', :name => '[H] AMS Z32 1c', :environments => ['DEVHF02'], :test_suite_name => '[H] BUFFER TESTS', :quota => 100},
  {:id => '[H] AMM Z31 1c', :name => '[H] AMM Z31 1c', :environments => ['DEVHF02'], :test_suite_name => '[H] BUFFER TESTS', :quota => 100},
  {:id => '[H] AMM Z32 1c', :name => '[H] AMM Z32 1c', :environments => ['DEVHF02'], :test_suite_name => '[H] BUFFER TESTS', :quota => 100},
  {:id => '[H] AMM Z32 2c', :name => '[H] AMM Z32 2c', :environments => ['DEVHF02'], :test_suite_name => '[H] BUFFER TESTS', :quota => 100},
  {:id => '[HE] AMM Z31 1c', :name => '[HE] AMM Z31 1c', :environments => ['DEVHF03'], :test_suite_name => '[HE] BUFFER TESTS', :quota => 100},
  {:id => '[HE] AMS Z31 1c', :name => '[HE] AMS Z31 1c', :environments => ['DEVHF03'], :test_suite_name => '[HE] BUFFER TESTS', :quota => 100},  
]

ENVIRONMENTS = [
  {:name => 'FAT5', :wms_version => '17.6'},
  {:name => 'FAT4', :wms_version => '18.1'},
  {:name => 'DEV3SKA', :wms_version => '5.1.0'},
  {:name => 'FAT1', :wms_version => 'trunk'},
  {:name => 'DEV2SKA', :wms_version => 'trunk'},
  {:name => 'DEV6', :wms_version => '5.1.1'},
  {:name => 'DEV7', :wms_version => 'trunk'},
  {:name => 'DEVHF01', :wms_version => '18.1'},
  {:name => 'DEVHF02', :wms_version => 'trunk'},
  {:name => 'DEVHF03', :wms_version => 'trunk'},
  {:name => 'FAT12', :wms_version => '5.2.0'},
  {:name => 'INT_BRANCH', :wms_version => '5.1.2'},
  {:name => 'INT_TRUNK', :wms_version => 'trunk'},
  {:name => 'DEV4', :wms_version => '17.5'},

]
