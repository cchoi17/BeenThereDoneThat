//
//  SignUpPage.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 2/7/24.
//

import SwiftUI
import FirebaseAuth


struct SignUpPage: View {
    @AppStorage("uid") var userID:String = ""
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack{
            Text("It's Nice to Meet You")
                .font(.custom("Cooper Lt Bt",size:30))
                .foregroundColor(Color("MyPink"))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,350)
                .padding(.leading,16.0)
            TextField("Email:", text:$email)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.black)
                .frame(height:55)
                .frame(width: 300)
                .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                .cornerRadius(7)

            SecureField("Password:(6+ chars)", text:$password)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(Color("MyBeige"))
                .frame(height:55)
                .frame(width: 300)
                .background(Color("MyBeige"))
                .cornerRadius(7)
                .padding(.top,10)
            Button{
                Auth.auth().createUser(withEmail:email, password:password){authResult, error in
                    if let error=error{
                        print(error)
                        return
                    }
                    if let authResult=authResult{
                        print(authResult)
                        userID = authResult.user.uid
                    }
                    
                }
            }label:{
                Text("Sign Up")
                    .font(.custom("Cooper Lt BT", size:20))
                    .foregroundColor(.white)
                    .frame(height:50)
                    .frame(width: 120)
                    .background(Color("MyGreen"))
                    .cornerRadius(10)
                    .padding(.top,20)
            }
        }
    }
}

struct SignUpPage_Previews: PreviewProvider{
    static var previews: some View{

            SignUpPage()
        
    }
}
