//
//  BeenThereDoneThatApp.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/24/24.
//

import SwiftUI
import Firebase


@main
struct BeenThereDoneThatApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                InitialView()
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
