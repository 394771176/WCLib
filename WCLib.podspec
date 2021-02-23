#
# Be sure to run `pod lib lint WCLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WCLib'
  s.version          = '0.1.0'
  s.summary          = 'WCLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '常用的第三方SDK包.'

  s.homepage         = 'https://github.com/394771176/WCLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '394771176' => '394771176@qq.com' }
  s.source           = { :git => 'https://github.com/394771176/WCLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # s.source_files = 'WCLib/Classes/**/*'

  s.subspec 'Wechat_NoPay' do |we|
    we.source_files = [
    'WCLib/Classes/Wechat_NoPay/1.8.9/*.h',
    ]
	we.vendored_libraries = 'WCLib/Classes/Wechat_NoPay/1.8.9/libWeChatSDK.a'
    #SystemConfiguration.framework, libz.dylib, libsqlite3.0.dylib, libc++.dylib, Security.framework, CoreTelephony.framework, CFNetwork.framework。
  	#s.libraries = 'z', 'c++', 'sqlite3.0'
  	#s.frameworks = 'SystemConfiguration','Security','CoreTelephony','CFNetwork'

#1.8.9
  	#[3]开发者需要在工程中链接上:Security.framework, CoreGraphics.framework, WebKit.framework。
  	we.libraries = 'c++'
  	we.frameworks = 'Security', 'CoreGraphics', 'WebKit'
  end
  
  # s.resource_bundles = {
  #   'WCLib' => ['WCLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.frameworks = 'UIKit', 'Foundation'

end
