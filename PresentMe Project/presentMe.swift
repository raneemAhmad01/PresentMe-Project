//
//  presentMe.swift
//  PresentMe Project
//
//

import SwiftUI

struct presentMe: View {
    
    //var availability = true
    // its inside the view, so add @State متغير يتحدث من نفسه
    @State private var isAvailable = true
    @State private var bio: String = "I'm a 25-years-old with a passion for art. I love walking, board games and music."
    @State private var isEditing = false // Tracks if we are editing or viewing

    // validation function
    func validateBio() {
            let trimmed = bio.trimmingCharacters(in: .whitespacesAndNewlines)
            if trimmed.isEmpty {
                bio = "Add bio" // Default text if left empty
            } else {
                bio = trimmed
            }
        }

    var body: some View {
        
        NavigationView{
            Form{
                List{
                    VStack{
                        if isAvailable{
                            Image(.hi)
                                .resizable()
                                .frame(width: 120,  height: 120)
                            
                            Text("Raneem, \(25)")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("Available").foregroundStyle(.green)
                        } else {
                            Image(.sleep)
                                .resizable()
                                .frame(width: 120,  height: 120)
                            
                            Text("Raneem, \(25)")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("Not Available").foregroundStyle(.red)
  
                        }
                    }
                    .frame(maxWidth:
                            .infinity, alignment: .center)
                    .listRowBackground(Color.clear)
                    
                    Section {
                        Toggle(isOn: $isAvailable) {
                            HStack(spacing: 12) {
                                Image(systemName: "moon.fill")
                                    .foregroundStyle(.green)
                                Text("Available Status")
                            }
                        }
                    }
                    
                    // About Section with Edit/Done button & Validation
                    Section(header: HStack {
                            Text("About")
                            Spacer()
                            Button(isEditing ? "Done" : "Edit") {
                                if isEditing {
                                    validateBio() // Run validation when clicking Done
                                    isEditing = false
                                } else {
                                    // If current text is "Add bio", clear it so they can type fresh
                                    if bio == "Add bio" {
                                        bio = ""
                                    }
                                    isEditing = true
                                }
                            }
                            .textCase(nil) // Keeps button text normal case
                        }) {
                            if isEditing {
                                // Show text field while editing
                                TextField("Write your bio...", text: $bio, axis: .vertical)
                                    .lineLimit(3...5)
                            } else {
                                // Show normal text when done (gray out if it's "Add bio")
                                Text(bio)
                                    .foregroundStyle(bio == "Add bio" ? .secondary : .primary)
                            }
                        }
                    
                    Section {
                        NavigationLink(destination: SecondView(isAvailable: $isAvailable)) {
                            HStack(spacing: 12) {
                                Image(systemName: "list.bullet")
                                    .foregroundStyle(.blue)
                                Text("Second View")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    presentMe()
}
