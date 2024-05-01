//
//  FeedCell.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 4/6/24.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    var body: some View {
        ZStack{
            Color("MyBeige").ignoresSafeArea(.all)
            
            VStack{
                Image("checkers")
                    .padding(.top, -150.0)
                    .frame(width: 15.0, height:0)
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(height:330)
                    .clipShape(Rectangle())
                Text(post.caption)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.leading,10)
                    .padding(.top,5)
                    .font(.custom("Cooper Lt BT", size:16))
                Text("6h ago")
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.leading,10)
                    .padding(.top,1)
                    .font(.custom("Cooper Lt Bt", size:12))
                    .foregroundColor(.gray)
                Image("checkers")
                    .padding(.top,170.0)
                    .frame(width: 15.0, height:0)
            }
           
        }
    }
}

#Preview {
    FeedCell(post:Post.MOCK_POSTS[1])
}
