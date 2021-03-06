//
//  HomeView.swift
//  Netflix
//
//  Created by adam janusewski on 6/21/22.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    // Used to expand screen to whole bounds
    let screen = UIScreen.main.bounds
    
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack { // Only Render Views that are on the screen
                    TopMoviePreviewView(movie: exampleMovieSix)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        
                    
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title2)
                                    .bold()
                                
                                
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCategory: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                            
                    }
                }
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
