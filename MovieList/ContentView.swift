//
//  ContentView.swift
//  MovieList
//
//  Created by Jubel's MacBook Pro on 7/9/22.
//

import SwiftUI

//MARK: - ContentView
struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.gray.withAlphaComponent(0.3)
    }
    
    var body: some View {
        TabView {
            //MARK: - MovieList View
            MovieListView()
                .tabItem {
                    VStack {
                        Image(systemName: "film")
                        Text("Movies")
                    }
                }
                .tag(0)
            
            //MARK: - Movie Search View
            MovieSearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
                .tag(1)
        }
    }
}

//MARK: - ContentView_Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
