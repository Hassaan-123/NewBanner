Pod::Spec.new do |spec|


  spec.platform     = :ios
  spec.ios.deployment_target = '12.0'
  spec.name         = "NewBanner"
  spec.version      = "1.0.0"
  spec.summary      = "It gives you a Simple pod for testing image slider."


  spec.homepage     = "https://github.com/Hassaan-123/NewBanner"
 
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "Hassaan-123" => "hassaanansari@magenative.com" }


  spec.source       = { :git => "https://github.com/Hassaan-123/NewBanner.git", :tag => "1.0.0" }
  
 
  


  spec.source_files  = "NewBanner/**/*.{h,m,swift}"
  
  spec.swift_version = "5.0"
  
  spec.requires_arc = true
  

end

