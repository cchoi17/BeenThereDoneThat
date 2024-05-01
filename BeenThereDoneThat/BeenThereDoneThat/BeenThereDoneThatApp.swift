//
//  BeenThereDoneThatApp.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/24/24.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseFirestore


@main
struct BeenThereDoneThatApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        let db = Firestore.firestore()
        return true
    }
}
