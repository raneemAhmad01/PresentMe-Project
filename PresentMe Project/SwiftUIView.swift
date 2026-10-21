//
//  SwiftUIView.swift
//  PresentMe Project
//
//  Created by RaneemAhmad on 09/05/1448 AH.
//

import SwiftUI

struct SwiftUIView: View {
    
    
    var body: some View {
        
        VStack{
            Text("Breathe").font(.title)
                .fontWeight(.semibold)
            
            Text("Inhale. Exhale. Reset.")
            Image(._1).resizable()
                .frame(width: 300,  height: 300)

            
            
        }
        HStack{
            Button(action: {
                // Action goes here
            }) {
                Image(systemName: "arrow.counterclockwise")
                    .font(.title)
                    
            }
            Button(action: {
                // Action goes here
            }) {
                Image(systemName: "play.fill")
                    .font(.title)
                    
            }

            
            
            
        }
    }
}

#Preview {
    SwiftUIView()
}
//Button(Image(systemName: "play.fill"))
