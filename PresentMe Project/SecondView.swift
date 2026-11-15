//
//  SecondView.swift
//  PresentMe Project
//
//

import SwiftUI

struct SecondView: View {
    
    //قيمه وحده في ٢ فيو
    @Binding var isAvailable: Bool
    
    let skillsEmo: [String: String] = [
            "💻": "Coding",
            "🤖": "Artificial Intelligence",
            "🎨": "Art",
            "🧩": "Problem Solving"
        ]

    let skillArray = ["Coding", "Artificial Intelligence", "Art", "Problem Solving"]
    let emojiArray = ["💻", "🤖", "🎨", "🧩"]
    
    
    var body: some View {
        
        List{
            
            /*Text("Second View")
                .frame(maxWidth:
                .infinity, alignment: .center)
                .listRowBackground(Color.clear)*/
            
            Section {
                         Toggle(isOn: $isAvailable) {
                         HStack(spacing: 12) {
                         Image(systemName: "moon.fill")
                                 .foregroundStyle(.green)
                         Text("Available Status")
                    }
                }
             }
            
            // the dictionary way:
            Section(header: Text("Skills")){
                
                ForEach(skillsEmo.sorted(by: { $0.key < $1.key }), id: \.key) { emoji, skill in
                                    HStack() {
                                        // Display the emoji key
                                        Text(emoji)
                                            .font(.system(size: 20))
                                        
                                        // Display the skill value
                                        Text(skill)
                                            .font(.system(size: 16, weight: .medium))
                                    }
                    .padding(.vertical, 4)
                }
            }
            
            //the array way:
            /*
            Section(header: Text("My Skills")) {
                // 2. Loop through the indices so we can match them up
                ForEach(skillArray.indices, id: \.self) { index in
                    HStack(spacing: 12) {
                        Text(emojiArray[index]) // Grabbing emoji by index
                            .font(.system(size: 20))
                        
                        Text(skillArray[index]) // Grabbing skill by index
                            .font(.system(size: 16, weight: .medium))
                    }
                    .padding(.vertical, 4)
                }
            }
            */
            
        }
    }
}

#Preview {
    SecondView(isAvailable: .constant(true))
}
