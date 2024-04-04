//
//  AuthenticationView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/30/24.
//

import SwiftUI
import FirebaseAuth


struct LoginPage: View {
    @AppStorage("uid") var userID:String=""
    
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            Text("Welcome Back")
                .font(.custom("Cooper Lt Bt",size:30))
                .foregroundColor(Color("MyPink"))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,350)
                .padding(.leading,15.0)
            TextField("Email:",text:$email)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.black)
                .frame(height:55)
                .frame(width: 300)
                .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                .cornerRadius(7)

            SecureField("Password:",text:$password)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(Color("MyBeige"))
                .frame(height:55)
                .frame(width: 300)
                .background(Color("MyBeige"))
                .cornerRadius(7)
                .padding(.top,10)
            Button{
                Auth.auth().signIn(withEmail: email, password: password){authResult, error in
                    if let error=error{
                        print(error)
                        return
                    }
                    if let authResult = authResult{
                        print(authResult.user.uid)
                        userID = authResult.user.uid
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
            LoginPage()
        }
    }
}
