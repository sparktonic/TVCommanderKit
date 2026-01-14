Pod::Spec.new do |s|
  s.name             = 'TVCommanderKit'
  s.version          = '1.0.0'
  s.summary          = 'Swift SDK for controlling Samsung Smart TVs over WebSocket'
  s.description      = <<-DESC
    TVCommanderKit is a Swift SDK for controlling Samsung Smart TVs over a WebSocket connection.
    It provides a simple and convenient way to interact with your TV and send remote control commands
    from your iOS application. Features include TV discovery, remote control, text entry, Wake on LAN,
    and app management.
  DESC

  s.homepage         = 'https://github.com/sparktonic/TVCommanderKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sparktonic' => 'dev@sparktonic.com' }
  s.source           = { :git => 'https://github.com/sparktonic/TVCommanderKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.8'

  # Source files
  s.source_files = 'Sources/TVCommanderKit/**/*.swift'

  # Vendored framework (Samsung's SmartView SDK)
  s.vendored_frameworks = 'SmartView.xcframework'

  # Dependencies
  s.dependency 'Starscream', '~> 4.0'

  # Build settings
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'SWIFT_COMPILATION_MODE' => 'wholemodule'
  }
end
