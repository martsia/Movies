//
//  MoviesDataService.swift
//  Movies
//
//  Created by Marta Kalichynska on 30.04.2024.
//

//  MoviesDataService.swift
//  Movies
//
//  Created by Marta Kalichynska on 30.04.2024.
//

import Foundation
import Alamofire

class MoviesDataService {
    static let apiKey = "6a137ca393fd782a8daba3e3f172ac3a"
    static let bearerToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YTEzN2NhMzkzZmQ3ODJhOGRhYmEzZTNmMTcyYWMzYSIsInN1YiI6IjY2MmZjYTk0MDcyMTY2MDEyMTZhMzE1OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.soXMtyMZ2cYLXKbuUC4AH0ZShf1yjz9YNBhvPNpekz4"
    
    static func fetchGenres(completion: @escaping (Result<[Genre], AFError>) -> Void) {
        let url = "https://api.themoviedb.org/3/genre/movie/list"
        let headers: HTTPHeaders = [
            "accept": "application/json",
            "Authorization": "Bearer \(bearerToken)"
        ]
        
        AF.request(url, method: .get, headers: headers).responseDecodable(of: GenresResponse.self) { response in
            switch response.result {
            case .success(let genresResponse):
                completion(.success(genresResponse.genres))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
