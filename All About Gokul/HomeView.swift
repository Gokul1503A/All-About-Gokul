//
//  HomeView.swift
//  All About Gokul
//
//  Created by Gokul Sai Koppola on 20/09/24.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("All About Gokul")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding()
            Text(information.name)
                .font(.title)
                .padding()
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "FFE5CF"))
    }
    
    
}

#Preview {
    HomeView()
}
