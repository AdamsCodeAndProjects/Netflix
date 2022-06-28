//
//  TopMoviePreviewView.swift
//  Netflix
//
//  Created by adam janusewski on 6/22/22.
//

import SwiftUI
import Kingfisher

struct TopMoviePreviewView: View {
    var movie: Movie
    
    // To get rid of one circle, checks to see if it is the last element
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 5))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                    
                    WhiteButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                .padding(.top, 450)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreviewView(movie: exampleMovieSix)
    }
}
