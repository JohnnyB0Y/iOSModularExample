Pod::Spec.new do |s|

    s.name         = "PageActions"
    s.version      = "0.1.0"
    s.summary      = "Test View Controller"
  
    s.description  = <<-DESC
                        Developer can make iOS programming easier
                      DESC
  
    s.homepage     = "https://github.com"
  
    s.license      = "GPL"

    s.requires_arc = true
  
    s.platform = :ios, '12.0'
  
    s.author       = { "JohnnyB0Y" => "ag860050872@163.com" }
  
    s.source       = { :git => "https://github.com", :tag => "#{s.version}" }
  
    s.source_files = 'Module/*.{h,m}'

    s.resource_bundles = {
      'ResourceFramework' => ['Module/*.{storyboard,xib,xcassets,json,imageset,png}']
    }

    s.frameworks = 'Foundation','UIKit'

    s.dependency 'CTMediator'
    s.dependency 'PageTarget'
  
  end
