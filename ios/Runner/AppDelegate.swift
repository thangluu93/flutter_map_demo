import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    [GMSServices provideAPIKey: @"AIzaSyBQf_aZ_YS86vRW0T3uKd0sishQp_jW1CM"];
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
