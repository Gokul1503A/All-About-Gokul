//
//  StoryView.swift
//  All About Gokul
//
//  Created by Gokul Sai Koppola on 20/09/24.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        Text("My Story")
            .font(.title)
            .foregroundColor(Color.blue)
            .padding(.top, 10)
        ScrollView {
            Text(information.Story)
                .font(.body)
                .padding()
        }
    }
}

#Preview {
    StoryView()
}

