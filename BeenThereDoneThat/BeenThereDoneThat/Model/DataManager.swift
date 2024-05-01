//
//  DataManager.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/8/24.


import SwiftUI
import FirebaseFirestore



class DataManager: ObservableObject{
    init(users: [User]) {
        self.users = users
    }
    @Published var users: [User]
    
    private func uploadUserData(uid: String)async{
        let user = User(id: uid)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
        
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
    }
}



