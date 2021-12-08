# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

flutter_application_path = '../../projects/ArnakFlutter'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'FlutterCrashTest3' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for FlutterCrashTest3

install_all_flutter_pods(flutter_application_path)

pod 'Firebase/Analytics', '~> 8.8.0'
  pod 'Firebase/Messaging', '~> 8.8.0'
  pod 'Firebase/Crashlytics', '~> 8.8.0'
  pod 'Firebase/RemoteConfig', '~> 8.8.0'

end
