Pod::Spec.new do |spec|

  spec.name         = "AdditionCalculator"
  spec.version      = "1.0.0"
  spec.summary      = "Provides simple integer addition"

  spec.description  = "Provides simple integer addition free for use anywhere"

  spec.homepage     = "http://tinygirlDevelopment.com/AdditionCalculator"
  
  spec.swift_version = '5.0'
  
  spec.license      = "MIT"

  spec.author       = "Luther Stanton"
  
  spec.platform     = :ios, "14.0"

  spec.source       = { :git => "https://github.com/mim-dev/AdditionCalculator.git", :tag => "1.0.0" }


  spec.source_files  = "AdditionCalculator", "AdditionCalculator/**/*.{h,m, swift}"

end
