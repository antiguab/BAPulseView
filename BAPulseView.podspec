Pod::Spec.new do |s|
  s.name             = "BAPulseView"
  s.version          = "0.1.0"
  s.summary          = "UIView that can create a pop and pulse response"
  s.description      = <<-DESC
                       This view and it's layer create a pop and pulse response. more info at:
                       [https://github.com/antiguab/BAPulseView]()
                       DESC
  s.homepage         = "https://github.com/antiguab/BAPulseView"
  # s.screenshots     = "", ""
  s.license          = 'MIT'
  s.author           = { "Bryan Antigua" => "antigua_B@gmail.com" }
  s.source           = { :git => "https://github.com/antiguab/BAPulseView.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'BAPulseView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
