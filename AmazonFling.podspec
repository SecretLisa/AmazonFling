#
# Be sure to run `pod lib lint AmazonFling.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name                    = 'AmazonFling'
    s.version                 = '1.6.3'
    s.summary                 = 'Easily integrate the Amazon Fling SDK to discover and control your FireTV in your app.'
    
    s.description             = <<-DESC
        Discovering and controlling your FireTV requires the Amazon Fling SDK.
        The SDK is not open source. That's why you won't find a pod for it.
        I wanted to integrate the Amazon Fling SDK using Cocoapods in one of my projects.
        So I created this pod which does the magic ;)
    DESC
    
    s.homepage                = 'https://github.com/SecretLisa/AmazonFling'
    s.license                 = { :type => 'MIT', :file => 'LICENSE' }
    s.author                  = { 'Xing Wang' => 'wangxing@secretlisa.com' }
    s.source                  = { :git => 'https://github.com/SecretLisa/AmazonFling.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '13.0'
    
    s.dependency 'Bolts'
    s.ios.frameworks          = 'CFNetwork', 'Security', 'SystemConfiguration'
    s.ios.vendored_frameworks = 'Frameworks/AmazonFling.xcframework'
    
    s.user_target_xcconfig    = { 'OTHER_LDFLAGS' => '$(inherited) -lc++' }
end
