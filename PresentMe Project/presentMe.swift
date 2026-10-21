//
//  presentMe.swift
//  PresentMe Project
//
//  Created by RaneemAhmad on 09/05/1448 AH.
//

import SwiftUI

struct presentMe: View {
    
    var body: some View {
        
        List{
            VStack{
                Image(._1)
                    .resizable()
                    .frame(width: 120,  height: 120)
                
                Text("Raneem, \(25)")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth:
                    .infinity, alignment: .center)
            .listRowBackground(Color.clear)
            
            
            Section{
                Text("I'm a 25-years-old with a passion for art. I love to walk, board games and music.  ")
                
                
            } header: {
                Text("About")
                
                
            }
        }
        
    }
}

#Preview {
    presentMe()
}
