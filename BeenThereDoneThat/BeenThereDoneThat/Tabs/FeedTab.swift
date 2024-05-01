//
//  FeedTab.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 3/12/24.
//

import SwiftUI
import PhotosUI


struct FeedTab: View {
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1

    
    var posts: [Post]{
        return Post.MOCK_POSTS
    }
    
    private let gridItems : [GridItem] = [
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
        .init(.flexible(), spacing:1),
    ]
    
    var body: some View {
        VStack{
            NavigationStack{
                ScrollView{
                    LazyVGrid(columns:gridItems, spacing:1){
                        ForEach(posts){ post in
                            Image(post.imageUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width:imageDimension, height:imageDimension)
                                .clipped()
                        }
                    }
                }.background(Color("MyPink"))
                
                NavigationLink(destination: UploadFeed()) {
                    Label("New Entry", systemImage: "plus.circle.fill")
                        .symbolRenderingMode(.multicolor)
                        .font(.custom("Cooper Lt BT", size:16))
                        .foregroundColor(Color("MyPink"))
                }.navigationTitle("")
            }.background(Color("MyPink")).ignoresSafeArea(.all)
        }
        
    }
}

#Preview {
    FeedTab()
}
