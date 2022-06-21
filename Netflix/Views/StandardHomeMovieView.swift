//
//  StandardHomeMovieView.swift
//  Netflix
//
//  Created by adam janusewski on 6/21/22.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovieView: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: exampleMovieOne)
    }
}
