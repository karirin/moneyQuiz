# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'moneyQuiz' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for prg
pod 'Firebase/Auth'
pod 'Firebase/Firestore'
pod 'Firebase/Storage'
pod 'Firebase/Database'
pod 'FSCalendar'
pod 'Google-Mobile-Ads-SDK'
pod 'FirebaseAnalytics'
end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
                  if target.name == 'gRPC-Core'
                      config.build_settings['OTHER_CFLAGS'] = [
                          '$(inherited)',
                          '-Wno-deprecated-builtins'
                      ]
                      config.build_settings['OTHER_CPLUSPLUSFLAGS'] = [
                          '$(inherited)',
                          '-Wno-deprecated-builtins'
                      ]
                  end
               end

              # Xcode 16+/26 treats the stale "-GCC_WARN_INHIBIT_ALL_WARNINGS"
              # source compiler flag in BoringSSL-GRPC as the unsupported "-G"
              # option. Remove it whenever Pods.xcodeproj is regenerated.
              target.source_build_phase.files.each do |file|
                  flags = file.settings && file.settings['COMPILER_FLAGS']
                  next unless flags

                  file.settings['COMPILER_FLAGS'] = flags
                      .split
                      .reject { |flag| flag == '-GCC_WARN_INHIBIT_ALL_WARNINGS' }
                      .join(' ')
              end
          end
   end

   # gRPC-Core versions pulled by this project contain
   # `Traits::template CallSeqFactory(...)`, which newer clang versions reject
   # because CallSeqFactory is not used as a template here.
   basic_seq = File.join(__dir__, 'Pods/gRPC-Core/src/core/lib/promise/detail/basic_seq.h')
   if File.exist?(basic_seq)
       text = File.read(basic_seq)
       File.write(
           basic_seq,
           text.gsub(
               'Traits::template CallSeqFactory(f_, *cur_, std::move(arg))',
               'Traits::CallSeqFactory(f_, *cur_, std::move(arg))'
           )
       )
   end
end
