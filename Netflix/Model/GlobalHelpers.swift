//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by adam janusewski on 6/21/22.
//

import Foundation

//  Mainly for Testing only -- To see in the preview file on the UIScreen

let exampleMovieOne = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!)
let exampleMovieTwo = Movie(id: UUID().uuidString, name: "Vision Quest", thumbnailURL: URL(string: "https://picsum.photos/200/300/")!)
let exampleMovieThree = Movie(id: UUID().uuidString, name: "300", thumbnailURL: URL(string: "https://picsum.photos/200/301")!)
let exampleMovieFour = Movie(id: UUID().uuidString, name: "The Watchmen", thumbnailURL: URL(string: "https://picsum.photos/200/302")!)
let exampleMovieFive = Movie(id: UUID().uuidString, name: "Home Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!)
let exampleMovieSix = Movie(id: UUID().uuidString, name: "Darkwing Duck", thumbnailURL: URL(string: "https://picsum.photos/200/304")!)

let exampleMovies: [Movie] = [exampleMovieOne, exampleMovieTwo, exampleMovieThree, exampleMovieFour, exampleMovieFive, exampleMovieSix]
