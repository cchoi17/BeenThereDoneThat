//
//  FeedTab.swift
//  BeenThereDoneThat
//
//  Created by Christina Choi on 3/12/24.
//

import SwiftUI
import PhotosUI

struct FeedTab: View {
    var body: some View {
        VStack{
            NavigationStack{
                
                Color("MyPink").ignoresSafeArea(.all)
                
                NavigationLink(destination: NewJournalView()) {
                    Label("New Entry", systemImage: "heart.fill")
                        .symbolRenderingMode(.multicolor)
                }.navigationTitle("")
                
                
                
                
                
                
                
                
                
            }
        }
    }
}

#Preview {
    FeedTab()
}
