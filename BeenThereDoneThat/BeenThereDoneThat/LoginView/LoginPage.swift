//
//  AuthenticationView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/30/24.
//

import SwiftUI

final class SignInEmail: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws{
        guard !email.isEmpty, !password.isEmpty else{
            print("No email or password found.")
            return
        }
        let _ = try await AuthenticationManager.shared.signInUser(email: email, password: password)
    }
}

struct LoginPage: View {
    @StateObject private var viewModel = SignInEmail()
    @Binding var showSignInView : Bool
    var body: some View {
        VStack{
            Text("Welcome Back")
                .font(.custom("Cooper Lt Bt",size:30))
                .foregroundColor(Color("MyPink"))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,350)
                .padding(.leading,15.0)
            TextField("Email:",text:$viewModel.email)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.black)
                .frame(height:55)
                .frame(width: 300)
                .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                .cornerRadius(7)

            SecureField("Password:",text:$viewModel.password)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(Color("MyBeige"))
                .frame(height:55)
                .frame(width: 300)
                .background(Color("MyBeige"))
                .cornerRadius(7)
                .padding(.top,10)
            Button{
                Task{
                    do{
                        try await viewModel.signIn()
                        showSignInView = false
                        return
                    } catch{
                        print(error)
                    }
                }
            }label:{
                Text("Login")
                    .font(.custom("Cooper Lt BT", size:20))
                    .foregroundColor(.white)
                    .frame(height:50)
                    .frame(width: 100)
                    .background(Color("MyGreen"))
                    .cornerRadius(10)
                    .padding(.top,20)
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            LoginPage(showSignInView: .constant(false))
        }
    }
}
