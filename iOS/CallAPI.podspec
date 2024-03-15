#
# Be sure to run `pod lib lint CallAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CallAPI'
  s.version          = '1.1.1'
  s.summary          = 'A short description of CallAPI.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/AgoraIO-Community/CallAPI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Agora Lab' => 'developer@agora.io' }
  s.source           = { :git => 'https://github.com/AgoraIO-Community/CallAPI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
  s.ios.deployment_target = '12.0'
  
  s.xcconfig = {'ENABLE_BITCODE' => 'NO'}
  
  s.static_framework = true
  s.swift_version = '5.0'
  
  
  s.default_subspec = 'All'
  
  s.subspec 'All' do |ss|
    ss.source_files = 'CallAPI/Classes/**/*'
    
    ss.dependency 'AgoraRtm_iOS', '2.1.8'
  end
  
  s.subspec 'WithoutRTM' do |ss|
    ss.source_files = [
    'CallAPI/Classes/*.swift',
    'CallAPI/Classes/Extension/*',
    'CallAPI/Classes/Proxy/*',
    ]
  end
  
  s.dependency 'AgoraRtcEngine_Special_iOS', '4.1.1.17'
end
