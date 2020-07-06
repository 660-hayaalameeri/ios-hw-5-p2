//
//  MoviesDataModel.swift
//  CW-6
//
//  Created by Hasan Alsaffar on 6/8/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import Foundation



class moviesModel {
    var movieName: String = ""
    var movieReleaseDate: Int
    var actors: [String]
    var rating: Double
    var rated: String
   
    
    init(name: String, release: Int, actors: [String], rating: Double, rated: String) {
        self.movieName = name
        self.movieReleaseDate = release
        self.actors = actors
        self.rating = rating
        self.rated = rated
    }
    func themeSongName() -> String {
              return movieName + ".mp3"
        
          }
   
    func clipName() -> String {
                 return movieName + ".mp4"
           
             }
}



// املأ  المصففة  الموجودة  في ملف  MovieDataModel بكوائن من  أفلامك المفضلة
//أو ازل الـComment عن المصفوقة التالية


var MoviesData = [
    moviesModel(name: "Gossip Girl", release: 2007, actors: ["Blake Lively", "Leighton Meester", "Chace Crawford"], rating: 7.4, rated: "TV-14"),
    moviesModel(name: "Dynasty", release: 2017, actors: ["Rafael de la Fuente", "Elizabeth Gillies", "Grant Show"], rating: 7.3, rated: "TV-14"),
    moviesModel(name: "On My Block", release: 2018, actors: ["Jason Genao", "Jessica Marie Garcia", "Julio Macias"], rating: 8.1, rated: "TV-14"),
    moviesModel(name: "Krypton", release: 2018, actors: ["Cameron Cuffe", "Georgina Campbell","Ann Ogbomo"], rating: 6.9, rated: "TV-14"),
    moviesModel(name: "How I Met Your Mother", release: 2005, actors: ["Josh Radnor","Jason Segel","Neil Patrick Harris"], rating: 8.3, rated: "TV-14"),
    moviesModel(name: "Once Upon A Time", release: 2011, actors: ["Lana Parrilla", "Robert Carlyle","Ginnifer Goodwin"], rating: 7.7, rated: "TV-14")
]

