//
//  MovieListView.swift
//  MovieList
//
//  Created by Jubel's MacBook Pro on 7/9/22..
//

import SwiftUI
//MARK: - MovieListView
struct MovieListView: View {
    
    @ObservedObject private var nowPlayingState = MovieListState()
    @ObservedObject private var upcomingState = MovieListState()
    @ObservedObject private var topRatedState = MovieListState()
    @ObservedObject private var popularState = MovieListState()
    
    var body: some View {
        NavigationView{
            VStack {
                //MARK: - Now Playing Movie list
                Group {
                    if nowPlayingState.movies != nil {
                        MoviePosterCarouselView(title: "Now Playing", movies: nowPlayingState.movies!)
                        
                    } else {
                        LoadingView(isLoading: self.nowPlayingState.isLoading, error: self.nowPlayingState.error) {
                            self.nowPlayingState.loadMovies(with: .nowPlaying)
                        }
                    }
                    
                }
                .listRowInsets(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
                
                //MARK: - Upcoming Movie list
                Group {
                    if upcomingState.movies != nil {
                        MovieBackdropCarouselView(title: "Upcoming", movies: upcomingState.movies!)
                    } else {
                        LoadingView(isLoading: self.upcomingState.isLoading, error: self.upcomingState.error) {
                            self.upcomingState.loadMovies(with: .upcoming)
                        }
                    }
                }
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
            }
            .navigationBarTitle("Movie List")
        }
        //MARK: - On appear
        .onAppear {
            self.nowPlayingState.loadMovies(with: .nowPlaying)
            self.upcomingState.loadMovies(with: .upcoming)
        }
        
    }
}

//MARK: - MovieListView_Previews
struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}

