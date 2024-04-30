//
//  MoviesGenresData.swift
//  Movies
//
//  Created by Marta Kalichynska on 30.04.2024.
//

import Foundation

struct Genres: Codable {
    let genres: [Genre]
}


struct Genre: Codable {
    let id: Int
    let name: String
}
