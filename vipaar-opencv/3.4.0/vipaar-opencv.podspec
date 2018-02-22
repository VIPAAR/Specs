Pod::Spec.new do |s|
    s.name                      = "vipaar-opencv"
    s.version                   = "3.4.0"
    s.summary                   = "OpenCV"
    s.homepage                  = "http://www.helplightning.com"
    s.license                   = "Copyright (c) 2018 VIPAAR, LLC."
    s.author                    = "Help Lightning"
    s.source                    = {
      :http => "https://github.com/opencv/opencv/releases/download/#{s.version}/opencv-#{s.version}-ios-framework.zip",
      :sha1 => "661d51dfcea1465d7126ff32aebb440578ad40b0"
    }
    s.requires_arc              = true
    s.platform                  = :ios
    s.ios.deployment_target     = '9.0'
    s.vendored_frameworks       = 'opencv2'
    s.pod_target_xcconfig       = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-opencv"'
    }
    s.user_target_xcconfig      = {
      'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/vipaar-opencv"'
    }
end
