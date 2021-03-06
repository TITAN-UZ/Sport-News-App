//
//  AppDelegate.swift
//  Championat
//
//  Created by Yuriy Balabin on 20.04.2020.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let os = ProcessInfo().operatingSystemVersion
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if os.majorVersion < 13 {
            
            self.window = UIWindow(frame: UIScreen.main.bounds)
            
            let layout = UICollectionViewFlowLayout()
            let viewModel = MainViewModel(networkService: NetworkService())
            let mainViewController = MainViewController(layout: layout, viewModel: viewModel)
            self.window?.rootViewController = UINavigationController(rootViewController: ViewController())
            self.window?.makeKeyAndVisible()
            
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

