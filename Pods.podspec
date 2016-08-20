Pod::Spec.new do |s|

  s.name         = "PodsTest"
  s.version      = "0.0.1"
  s.summary      = "A short description of PodsTest."

  s.homepage     = "https://github.com/yiyuanshan/PodsTest"

  s.license      = "MIT"

  s.author       = { "yiyuan_shan" => "yiyuan_shan@163.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/yiyuanshan/PodsTest.git", :tag => "0.0.1" }

  s.source_files  = "YDAnalyticsSDK", "*.framework"
  s.requires_arc = true
end
