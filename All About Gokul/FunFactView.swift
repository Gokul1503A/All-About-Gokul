//
//  FunFactView.swift
//  All About Gokul
//
//  Created by Gokul Sai Koppola on 20/09/24.
//

import SwiftUI

public struct FunFactView: View {
    @State private var funfact = ""
    public var body: some View {
        Text("Fun Facts about Gokul")
            .font(.largeTitle)
            .foregroundColor(Color(hex: "#FF885B"))
            .padding()
        
        Text(funfact)
            .padding(.bottom , 20)
        
        Button("Get Fun Fact") {
            funfact = information.funfacts.randomElement()?.description ?? "No Fun Fact Found"
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    FunFactView()
}
