//
//  ContentView.swift
//  All About Gokul
//
//  Created by Gokul Sai Koppola on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "person"){
                HomeView()
            }
            Tab("Story", systemImage: "book"){
                StoryView()
            }
            Tab("Favorites", systemImage: "star"){
                FavoriteView()
            }
            Tab("Fun Facts", systemImage: "hand.thumbsup"){
                FunFactView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
