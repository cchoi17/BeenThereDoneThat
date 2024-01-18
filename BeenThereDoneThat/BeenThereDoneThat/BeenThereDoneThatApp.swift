//
//  BeenThereDoneThatApp.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/10/24.
//
// home page with journal entries and recommended prompts. another tab
// for feed of pics (pic, caption, location) 
import SwiftUI
import FirebaseCore
import FirebaseAuth
import GoogleSignIn
import Firebase
import Foundation
import UIKit

@main
struct BeenThereDoneThatApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate


  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
      }
    }
  }
}


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
    func applicationWillTerminate(_ application: UIApplication) {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
    func application(_ app: UIApplication,
                     open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }
}

