//
//  Movie.swift
//  Netflix
//
//  Created by adam janusewski on 6/21/22.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    
}
