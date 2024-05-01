//
//  EntryTab.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 3/12/24.
//

import SwiftUI

struct EntryTab: View {
    var body: some View {
        NavigationStack{
            HStack{
                Text("Dinner with friends")
                    .font(.custom("Cooper Lt BT", size:18))
                    .foregroundColor(.black)
                    .frame(height:55)
                    .frame(width: 250)
                    .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                    .cornerRadius(7)
                    .frame(maxWidth:.infinity, alignment:.top)
                    .padding()
                Text("April 18th, 2024")
                    .font(.custom("Cooper Lt BT", size:10))
                    .padding()
            }
            HStack{
                Text("Morning hike events")
                    .font(.custom("Cooper Lt BT", size:18))
                    .foregroundColor(.black)
                    .frame(height:55)
                    .frame(width: 250)
                    .background(RoundedRectangle(cornerRadius: 7).fill(Color("MyBeige")))
                    .cornerRadius(7)
                    .frame(maxWidth:.infinity, alignment:.top)
                    .padding()
                Text("April 10th, 2024")
                    .font(.custom("Cooper Lt BT", size:10))
                    .padding()
            }
            NavigationStack{
                NavigationLink(destination: UploadEntry()) {
                    Label("New Entry", systemImage: "plus.circle.fill")
                        .symbolRenderingMode(.multicolor)
                        .font(.custom("Cooper Lt BT", size:16))
                        .foregroundColor(Color("MyPink"))
                }.navigationTitle("")
            }.frame(maxHeight:.infinity, alignment:.bottom)
        }.background(Color("MyGreen")).ignoresSafeArea(.all)
        
    }
}

#Preview {
    EntryTab()
}
