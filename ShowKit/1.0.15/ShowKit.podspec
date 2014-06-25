 Pod::Spec.new do |s|
  s.name            = "ShowKit"
  s.version         = "1.0.15"
  s.summary         = "Video Conferencing, Audio Conferencing, Screen Sharing, Gesture Sharing."
  s.homepage        = "http://www.showkit.com"
  s.license         = {
    :type => 'Commercial',
    :text => <<-LICENSE
              © 2013 ShowKit. All rights reserved.
    LICENSE
  }
  s.author          = { "Anthony Kelani" => "anthony@showkit.com" }
  s.source          = { :http => 'https://www.dropbox.com/s/brdp6pjz1wpwrae/ShowKit-1.0.15.zip' }
  s.platform        = :ios
  
  s.source_files    = 'ShowKit.framework/Versions/A/Headers/*.h'
  s.preserve_paths  = 'ShowKit.framework/*'

  s.frameworks      = 'OpenGLES', 'AVFoundation', 'QuartzCore', 'CFNetwork', 'CoreVideo', 'CoreGraphics', 'CoreMedia', 'AudioToolbox', 'SystemConfiguration', 'ShowKit'
  s.libraries       = 'resolv', 'z'
  s.xcconfig        = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ShowKit"', 'OTHER_LDFLAGS' => '-lc++ -ObjC' }

  s.requires_arc    = false

end
