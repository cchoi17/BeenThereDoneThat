//
//  ImagePicker.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/8/24.
//

import Foundation
import UIKit
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable{
    
    @Binding var selectedImage: UIImage?
    @Binding var isPickerShowing: Bool
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = context.coordinator // object that can receive UIImagePickerController events
        
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
}

class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var parent: ImagePicker
    
    init(_ picker: ImagePicker){
        self.parent = picker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Run when the user has selected an image
        print("image selected")
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            // able to get image
            DispatchQueue.main.async{
                self.parent.selectedImage = image
            }
        }
        // dismiss the picker
        
        parent.isPickerShowing = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Run when the user has cancelled the picker UI
        print("cancelled")
        parent.isPickerShowing = false 
    }
}
