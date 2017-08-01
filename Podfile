# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
workspace 'ThoughtWords'

target 'ThoughtWords' do
  use_frameworks!
  pod 'Alamofire', '4.4.0'
  pod 'ReactiveCocoa', '~> 6.0'
  pod 'SwiftyJSON'
  pod 'Firebase/Database'

  def testing_pods
      pod 'Quick'
      pod 'Nimble'
      pod 'Firebase/Database'
  end

  target 'ThoughtWordsTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'ThoughtWordsUITests' do
    inherit! :search_paths
  end

end
