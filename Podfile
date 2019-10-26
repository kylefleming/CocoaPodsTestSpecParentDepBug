source 'https://cdn.cocoapods.org/'
platform :ios, '10.0'

use_frameworks!

workspace 'Test'

abstract_target 'DummyTarget1' do
  pod 'Test/Core', path: '.', testspecs: ['Tests']
end

abstract_target 'DummyTarget2' do
  pod 'Test/Rx', path: '.', testspecs: ['Tests']
end
