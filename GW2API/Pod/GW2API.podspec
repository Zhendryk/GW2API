Pod::Spec.new do |s|
  s.name         = "GW2API"
  s.version      = "1.1"
  s.summary      = "A Swift API Wrapper for the Guild Wars 2 API Version 2."
  s.description  = <<-DESC
  Access data about your Guild Wars 2 account, in game items, trading post data, and more!
                   DESC
  s.homepage     = "https://github.com/Zhendryk/GW2API"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author    = "Zhendryk"
  s.source       = { :git => "https://github.com/Zhendryk/GW2API.git", :tag => "#{s.version}" }
  s.source_files  = "GW2API", "GW2API/**/*.{h,m,swift}"
  s.swift_version = "4.1"
  s.platform     = :ios, "11.0"
end
