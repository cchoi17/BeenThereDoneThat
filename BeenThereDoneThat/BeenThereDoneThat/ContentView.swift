//
//  ContentView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/24/24.
//

import SwiftUI
import FirebaseAuth


struct ContentView: View {
    @AppStorage("uid") var userID: String = ""
    var body: some View {
            if userID == ""{
                InitialView()
            }else{
                TabView{
                    EntryTab()
                        .tabItem(){
                            Image("journal")
                            //credit: <a href="https://www.flaticon.com/free-icons/e-learning" title="e learning icons">E learning icons created by kerismaker - Flaticon</a>
                        }
                    FeedTab()
                        .tabItem(){
                            Image("camera")
                            //credit: <a href="https://www.flaticon.com/free-icons/tab" title="tab icons">Tab icons created by Freepik - Flaticon</a>
                        }
                    
                    }
                Button(action: {
                                let firebaseAuth = Auth.auth()
                                do {
                                    try firebaseAuth.signOut()
                                    withAnimation {
                                        userID = ""
                                    }
                                } catch let signOutError as NSError {
                                    print("Error signing out: %@", signOutError)
                                }
                            }) {
                                Text("Sign Out")
                            }
            }
        
    }
}



#Preview {
    ContentView()
}
