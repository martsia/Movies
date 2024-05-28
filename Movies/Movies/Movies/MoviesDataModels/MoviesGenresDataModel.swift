//
//  MoviesGenresDataModel.swift
//  Movies
//
//  Created by Marta Kalichynska on 30.04.2024.
//

import Foundation

struct GenresResponse: Decodable {
    let genres: [Genre]
}

struct Genre: Decodable {
    let id: Int
    let name: String
}
