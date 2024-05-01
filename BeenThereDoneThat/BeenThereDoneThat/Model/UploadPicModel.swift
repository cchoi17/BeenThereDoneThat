//
//  UploadPicModel.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/6/24.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPicModel:ObservableObject{
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItem: selectedImage) } }
    }
    @Published var postImage: Image?
    private var uiImage: UIImage?
    
    func loadImage(fromItem item: PhotosPickerItem?) async{
        guard let item = item else{ return }
        guard let data = try? await item.loadTransferable(type:Data.self) else{ return }
        guard let uiImage = UIImage(data: data) else { return }
        self.postImage = Image(uiImage: uiImage)
        self.uiImage = uiImage 
    }
    
//    func uploadPost(caption: String) async throws{
//        guard let uiImage = uiImage else{ return }
//        let post = Post(id: <#T##String#>, caption: caption, imageUrl: "", timeStamp: Date())
//    }
}
