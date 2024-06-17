//
//  AppDelegate.swift
//  AdmobSwiftUISample
//
//  Created by Davidyoon on 6/17/24.
//

import GoogleMobileAds

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        return true
    }
    
}
