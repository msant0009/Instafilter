//
//  ContentView.swift
//  Instafilter
//
//  Created by Mark Santoro on 12/10/24.
//

import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5
   
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                if let processedImage {
                    processedImage
                        .resizable()
                        .scaledToFit()
                }else{
                    ContentUnavailableView("No Picture", systemImage: "photo.badge.plus",description: Text("Tap to insert a photo"))
                }
                
                Spacer()
                
                HStack {
                    Text("Intensity")
                    Slider(value: $filterIntensity) {
                        
                    }
                    .padding(.vertical)
                    
                    HStack {
                        Button("Change Filter") {
                            // change filter
                        }
                        
                        Spacer()
                        
                        
                    }
                }
                .padding([.horizontal,.bottom])
                .navigationTitle("Instafilter")
            }
        }
          
    }
    
}

#Preview {
    ContentView()
}
