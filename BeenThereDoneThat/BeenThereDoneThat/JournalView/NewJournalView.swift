//
//  NewJournalView.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/4/24.
//

import SwiftUI
import PhotosUI

struct NewJournalView: View {
    @State private var images: [UIImage] = []
    @State private var photosPickerItems : [PhotosPickerItem] = []
    
    var body: some View {
        VStack{
            PhotosPicker("Select Photos up to 5", selection: $photosPickerItems, maxSelectionCount: 5, selectionBehavior: .ordered)
            ScrollView(.horizontal){
                VStack{
                    ForEach(0..<images.count,id:\.self){i in
                        Image(uiImage:images[i])
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width:100, height:100)
                    }
                }
            }
        }
        .padding(30)
        .onChange(of: photosPickerItems){_,_ in
            Task{
                for item in photosPickerItems{
                    if let data = try? await item.loadTransferable(type: Data.self){
                        if let image=UIImage(data:data){
                            images.append(image)
                        }
                    }
                }
            }}
    }
}

#Preview {
    NewJournalView()
}
