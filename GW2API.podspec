#
#  Be sure to run `pod spec lint GW2API.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "GW2API"
  s.version      = "1.0.0"
  s.summary      = "A simple Swift wrapper for the Guild Wars 2 API Version 2."
  s.description  = "Access data about your Guild Wars 2 account, in game items, trading post data, and more!"
  s.homepage     = "https://github.com/Zhendryk/GW2API"
  s.license      = "MIT"
  s.author       = "Zhendryk"
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/Zhendryk/GW2API.git", :tag => "#{s.version}" }
  s.source_files  = "GW2API", "GW2API/**/*.{h,m,swift,plist}"
  s.swift_version = "4.1"
end
