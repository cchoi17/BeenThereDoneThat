//
//  LoginView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/29/24.
//

import SwiftUI

struct InitialView: View {
    @State private var showSignInView: Bool = false
    let image1 = Image("loginPic")
    let image2 = Image("checkers")
    var body: some View {
        NavigationStack{
            VStack{
                
                //            Color("MyBeige").edgesIgnoringSafeArea(.all)
                image2
                    .padding(.top,-10)
                    .frame(width: 30.0, height:0)
                Text("BeenThereDoneThat")
                    .font(.custom("Cooper Lt BT", size:30))
                    .padding(.top,80)
                //                .background(Color("MyBeige")).edgesIgnoringSafeArea(.all)
                
                
                NavigationStack{
                    NavigationLink(destination: LoginPage()){
                        Label("Login", systemImage:"")
                            .font(.custom("Cooper Lt BT", size:20))
                            .foregroundColor(.white)
                            .frame(height:55)
                            .frame(width: 300)
                            .background(Color("MyGreen"))
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: SignUpPage()){
                        Label("Sign Up", systemImage:"")
                            .font(.custom("Cooper Lt BT", size:20))
                            .foregroundColor(.white)
                            .frame(height:55)
                            .frame(width: 300)
                            .background(Color("MyPink"))
                            .cornerRadius(10)
                    }
                    
                }
                
                
                .navigationTitle("")
                
                image1.resizable()
                    .padding(.vertical, 40)
                    .frame(width: 250.0, height:350.0)
                image2
                    .padding(.bottom,-40.0)
                    .frame(width: 30.0, height:0)
            }.frame(maxWidth:.infinity, maxHeight:.infinity)
                .background(Color("MyBeige")).edgesIgnoringSafeArea(.all)
        }
    }
}

struct InitialView_Previews: PreviewProvider{
    static var previews: some View{
        InitialView()
    }
}
