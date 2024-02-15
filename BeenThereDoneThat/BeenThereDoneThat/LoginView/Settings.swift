//
//  Settings.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 2/7/24.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject{
    func signOut() throws{
        try AuthenticationManager.shared.signOut()
    }
}
struct Settings: View {
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    var body: some View {
        List{
            Button("Log out"){
                Task{
                    do{
                        try viewModel.signOut()
                        showSignInView = true
                    } catch{
                        print(error)
                    }
                }
            }
        }
        .navigationBarTitle("settings")
    }
}

#Preview {
    Settings(showSignInView: .constant(false))
}
