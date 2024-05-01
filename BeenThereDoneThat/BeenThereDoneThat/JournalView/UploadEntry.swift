//
//  UploadEntry.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 5/1/24.
//

import SwiftUI

struct UploadEntry: View {
    @State var title : String = ""
    @State var entry: String = ""
    var body: some View {

        NavigationStack{
            Text("New Post")
                .fontWeight(.semibold)
                .font(.custom("Cooper Lt BT", size:20))
                .frame(maxWidth:.infinity, maxHeight:.infinity, alignment:.topLeading)
                .offset(x:20, y:20)
            NavigationStack{
                NavigationLink(destination: EntryTab()) {
                    Label("Add", systemImage: "heart.fill")
                        .symbolRenderingMode(.multicolor)
                        .font(.custom("Cooper Lt BT", size:16))
                        .foregroundColor(Color("MyPink"))
//                        .frame(maxWidth:.infinity, maxHeight:.infinity, alignment:.topTrailing)
                }.navigationTitle("")
            }
            TextField("Title...", text:$title)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.black)
                .frame(height:55)
                .frame(width: 300)
                .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                .cornerRadius(7)
                .padding()
            TextField("Entry...", text:$entry)
                .padding()
                .font(.custom("Cooper Lt BT", size:20))
                .foregroundColor(.black)
                .frame(height:200)
                .frame(width: 300)
                .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                .cornerRadius(7)
                .padding()
            Spacer()
        }

    }
}


#Preview {
    UploadEntry()
}
