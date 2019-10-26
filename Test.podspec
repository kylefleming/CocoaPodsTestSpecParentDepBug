Pod::Spec.new do |s|
  s.name         = 'Test'
  s.authors      = 'Kyle Fleming'
  s.homepage     = 'https://github.com/kylefleming/CocoaPodsTestSpecParentDepBug'
  s.summary      = 'Test'
  s.version      = '0.0.1'
  s.source       = { path: '.' }
  s.swift_version = '5.0'

  s.subspec 'Core' do |subspec|
    subspec.source_files = 'Sources/Core.swift'

    subspec.test_spec do |test_spec|
      test_spec.source_files = 'Tests/CoreTests.swift'
      test_spec.dependency 'Quick'
    end
  end

  s.subspec 'Rx' do |subspec|
    subspec.source_files = 'Sources/Rx.swift'
    subspec.dependency 'Test/Core'
    subspec.dependency 'RxSwift', "~> 5.0"

    subspec.test_spec do |test_spec|
      test_spec.source_files = 'Tests/RxTests.swift'
      test_spec.dependency 'Quick'
    end
  end
end
