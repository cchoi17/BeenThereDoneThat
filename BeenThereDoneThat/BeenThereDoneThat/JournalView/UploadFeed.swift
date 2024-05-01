//
//  NewJournalView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/4/24.
//

import SwiftUI
import PhotosUI
//import FirebaseStorage



struct UploadFeed: View {
    //    @State private var images: [UIImage] = []
    @State var isPickerShowing = false
    @State var caption : String = ""
    @State var selectedImage: UIImage?
    
    
    var body: some View {
        
        VStack{
            HStack{
                NavigationStack{
                    Text("New Post")
                        .fontWeight(.semibold)
                        .font(.custom("Cooper Lt BT", size:20))
                    Spacer()
                    
                    NavigationLink(destination: FeedTab()) {
                        Label("Add", systemImage: "heart.fill")
                            .symbolRenderingMode(.multicolor)
                            .font(.custom("Cooper Lt BT", size:16))
                            .foregroundColor(Color("MyPink"))
                    }
                    
                    
                }
                
                
                
            }.padding(.horizontal)
            Spacer()
            Spacer()
            VStack(spacing: 8){
                
                TextField("Title...", text: $caption, axis: .vertical)
                    .padding()
                    .font(.custom("Cooper Lt BT", size:20))
                    .foregroundColor(.black)
                    .frame(height:55)
                    .frame(width: 300)
                    .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                    .cornerRadius(7)
                Spacer()
                if selectedImage != nil{
                    Image(uiImage: selectedImage!)
                        .resizable()
                        .scaledToFill()
                        .frame(width:200, height:200)
                        .clipped()
                }
                Button{
                    isPickerShowing = true
                }label:{
                    Text("Select a Photo")
                        .font(.custom("Cooper Lt Bt", size:20))
                        .foregroundColor(.black)
                }
                .padding()
            }
            .sheet(isPresented: $isPickerShowing, onDismiss: nil){
                ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
            }
            
        }
        
    }
}


#Preview {
    UploadFeed()
}
