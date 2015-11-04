Pod::Spec.new do |s|
  s.name               =  'QuincyKit'
  s.version            =  '3.0.0'
  s.license            =  'MIT & Apache License, Version 2.0'
  s.summary            =  'Live crash report management for iOS and Mac OS X. AppStore ready!.'
  s.homepage           =  'https://github.com/TheRealKerni/QuincyKit'
  s.author             =  { 'Andreas Linde' => 'mail@andreaslinde.de' }
  s.source             =  { :git => 'https://github.com/TheRealKerni/QuincyKit.git', commit: 'bdb3bc7db', :tag => '3.0.0' }

  s.ios.source_files   =  'client/iOS/*.{h,m}'
  s.ios.resource       =  'client/iOS/Quincy.bundle'
  s.ios.frameworks     =  'SystemConfiguration'
  s.ios.xcconfig       =  { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/QuincyKit/client/iOS"' }
  s.ios.dependency = 'PLCrashReporter', '1.2'

  s.osx.source_files   =  'client/Mac/*.{h,m}'
  s.osx.resource       =  'client/Mac/BWQuincyMain.nib'
end
