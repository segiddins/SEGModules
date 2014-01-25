#
# Be sure to run `pod spec lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "SEGModules"
  s.version      = "0.1.0"
  s.summary      = "A library to bring modules/mixins/concrete protocols to Objective-C."
  s.homepage     = "https://github.com/segiddins/SEGModules"
  s.license      = 'MIT'
  s.author       = { "Samuel E. Giddins" => "segiddins@segiddins.me" }
  s.source       = { :git => "#{s.homepage}.git", :tag => s.version.to_s }

  # s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = false

  s.source_files = 'Classes'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
