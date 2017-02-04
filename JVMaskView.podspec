#
# Be sure to run `pod lib lint JVMaskView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JVMaskView'
  s.version          = '1.0.0'
  s.summary          = 'JVMaskView allows you to create a view with a hole in it.'

  s.description      = "JVMaskView allows you to create a view with a hole in it."

  s.homepage         = 'https://github.com/Sali0m/JVMaskView'
  s.screenshots     = 'http://www.saliom.be/githubImg/JVMaskView.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sali0m' => 'jehan.vossen@gmail.com' }
  s.source           = { :git => 'https://github.com/Sali0m/JVMaskView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/@Sali0m'

  s.ios.deployment_target = '9.0'

  s.source_files = 'JVMaskView/Classes/**/*'
end
