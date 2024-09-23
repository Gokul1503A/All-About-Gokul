//
//  FavoriteView.swift
//  All About Gokul
//
//  Created by Gokul Sai Koppola on 20/09/24.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        VStack {
            Text ("Other Facts About Gokul")
                .foregroundColor(Color(hex:"#6439FF"))
                .font(.title)
                .padding(.bottom, 20)
            HStack{
                VStack{
                    Text("Skills")
                        .foregroundColor(Color(hex:"#8967B3"))
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    ScrollView{
                        VStack{
                            ForEach(Array(information.skills.enumerated()), id: \.element){index, skill in
                                Text("\(index+1). \(skill)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                            }
                        }
                        .padding(.horizontal)

                    }
                }
                
                VStack{
                    Text("Hobbies")
                        .foregroundColor(Color(hex:"#8967B3"))
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    ScrollView{
                        VStack{
                            ForEach(Array(information.hobbies.enumerated()), id: \.element) { index, hobby in
                                Text("\(index + 1). \(hobby)")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }

                    }
                }
                .frame(maxWidth: .infinity, alignment: .trailing) // Aligns the text to the Right
                
                
                
            }
            .background(Color(hex:"#ECDFCC"))
        
            Text("My Favorite People for Gokul ❤️")
                .font(.title2)
            ScrollView{
                VStack{
                    ForEach(Array(information.favorites.enumerated()), id: \.offset) { index, name in
                        Text("\(index + 1). \(name)")
                           
                    }
                }

            }
                
            
            
            
            
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

#Preview {
    FavoriteView()
}
