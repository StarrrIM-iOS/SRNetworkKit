Pod::Spec.new do |s|
  s.name             = 'SRNetworkKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SRNetworkKit.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Apple-523/SRNetworkKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Apple-523' => 'wenmingyan_work@126.com' }
  s.source           = { :git => 'https://github.com/Apple-523/SRNetworkKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '15.0'

  s.source_files = 'SRNetworkKit/Classes/**/*'
  s.swift_version = '5.9'
  # s.resource_bundles = {
  #   'SRNetworkKit' => ['SRNetworkKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire'# API请求
  s.dependency 'SRLogKit'
  s.dependency 'SRUtil'

  # Tests subspec
  s.test_spec 'Tests' do |ts|
    ts.source_files = ['Tests/**/*','SRNetworkKit/Classes/**/*']
    ts.dependency 'SRLogKit'
  end
  
end
