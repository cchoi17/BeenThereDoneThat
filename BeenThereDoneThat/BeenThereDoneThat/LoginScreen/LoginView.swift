//
//  LoginView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/29/24.
//

import SwiftUI

struct LoginView: View {
    let pink = Color(red: 0.87, green: 0.52, blue: 0.73, opacity: 0.9)
    let green = Color(red: 0.039,green: 0.49, blue: 0.298, opacity:0.9)
    let beige = Color(red: 0.81, green: 0.73, blue: 0.59, opacity:0.7)
    let image1 = Image("loginPic")
    let image2 = Image("checkers")
    var body: some View {
        VStack{
            image2
                .padding(.bottom, 155.0)
                .frame(width: 30.0, height:0)
            Text("BeenThereDoneThat")
                .font(.custom("Cooper Lt BT", size:30))
                .padding(.top,50)
            NavigationLink{
                Text("Hello") // replace this with a login view
            }label: {
                Text("Login")
                    .font(.custom("Cooper Lt BT", size:20))
                    .foregroundColor(.white)
                    .frame(height:55)
                    .frame(width: 300)
                    .background(pink)
                    .cornerRadius(10)
                    .padding(.top,20)
            }
            NavigationLink{
                Text("Hello") // replace this with a sign up view
            }label: {
                Text("Sign Up")
                    .font(.custom("Cooper Lt BT", size:20))
                    .foregroundColor(.white)
                    .frame(height:55)
                    .frame(width: 300)
                    .background(green)
                    .cornerRadius(10)
            }
            image1.resizable()
                .padding(.vertical, 40)
                .frame(width: 250.0, height:350.0)
            image2
                .padding(.top,111.0)
                .frame(width: 30.0, height:0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(beige)
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            LoginView()
        }
    }
}
