//
//  RootView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 2/7/24.
//

import SwiftUI

struct RootView: View {
    @State private var showSignInView: Bool = false
    var body: some View {
        ZStack{
            NavigationStack{
                Settings(showSignInView: $showSignInView)
            }
        }
        .onAppear{
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationStack{
                InitialView()
            }
        }
    }
}

#Preview {
    RootView()
}
