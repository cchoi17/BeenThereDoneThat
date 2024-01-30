//
//  AuthenticationView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 1/30/24.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack{
            Text("Welcome Back")
                .font(.custom("Cooper Lt Bt",size:30))
                .foregroundColor(Color("MyPink"))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,400)
                .padding(.leading,12.0)
            Text("Email:")
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.white)
                .frame(height:55)
                .frame(width: 300)
                .background(Color("MyBeige"))
                .cornerRadius(7)
//                .padding(.top,10)
            Text("Password:")
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.white)
                .frame(height:55)
                .frame(width: 300)
                .background(Color("MyBeige"))
                .cornerRadius(7)
                .padding(.top,10)
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            AuthenticationView()
        }
    }
}
