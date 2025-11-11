import UIKit
import Capacitor
import FirebaseCore   // ✅ Add Firebase import

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    override init() {
        super.init()
        // ✅ Initialize Firebase before anything else
        FirebaseApp.configure()
        print("✅ Firebase initialized successfully.")
    }

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Any custom startup code can go here
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Handle when app will become inactive
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Handle when app goes to background
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Handle app returning from background
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Handle app becoming active again
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Handle app termination
    }

    // ✅ Deep links (Capacitor)
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        return ApplicationDelegateProxy.shared.application(app, open: url, options: options)
    }

    // ✅ Universal links (Capacitor)
    func application(
        _ application: UIApplication,
        continue userActivity: NSUserActivity,
        restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void
    ) -> Bool {
        return ApplicationDelegateProxy.shared.application(application, continue: userActivity, restorationHandler: restorationHandler)
    }
}
