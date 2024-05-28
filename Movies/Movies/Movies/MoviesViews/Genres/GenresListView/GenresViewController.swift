//  ViewController.swift
//  Movies
//
//  Created by Marta Kalichynska on 30.04.2024.
//

//  ViewController.swift
//  Movies
//
//  Created by Marta Kalichynska on 30.04.2024.

import UIKit
import Alamofire

class GenresViewController: UIViewController {
    @IBOutlet weak var genresListTableView: UITableView!
    var genres: [Genre] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genresListTableView.dataSource = self
        view.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
        fetchGenres()
    }
    
    func fetchGenres() {
        MoviesDataService.fetchGenres { result in
            switch result {
            case .success(let genres):
                self.genres = genres
                self.genresListTableView.reloadData()
            case .failure(let error):
                print("Error fetching genres: \(error)")
            }
        }
    }
}

extension GenresViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GenreCell", for: indexPath)
        cell.textLabel?.text = genres[indexPath.row].name
        return cell
    }
}
