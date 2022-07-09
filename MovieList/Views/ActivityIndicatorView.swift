//
//  ActivityIndicatorView.swift
//  MovieList
//
//  Created by Jubel's MacBook Pro on 7/9/22.
//

import SwiftUI

//MARK: - ActivityIndicator View 
struct ActivityIndicatorView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}

