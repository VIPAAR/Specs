Pod::Spec.new do |s|
    s.name                      = "vipaar-cmf"
    s.version                   = "1.0.2"
    s.summary                   = "Chunked Message Framing"
    s.homepage                  = "https://github.com/VIPAAR/libcmf"
    s.license                   = "Copyright (c) 2016 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = { :git => "ssh://git@github.com/VIPAAR/libcmf.git", :tag => "#{s.version}"}
    s.source_files              = "ios/src/**/*.{h,m}"
    s.requires_arc              = true
    s.ios.deployment_target     = '8.0'
    s.framework                 = 'JRE'
    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-j2objc/distributive/frameworks"',
      'HEADER_SEARCH_PATHS'    => '"$(PODS_ROOT)/vipaar-j2objc/distributive/include"',
      'OTHER_CFLAGS'           => '-fobjc-arc-exceptions'
    }
    s.header_mappings_dir       = 'ios/src'
    s.ios.dependency              "vipaar-j2objc", '1.2'
end
