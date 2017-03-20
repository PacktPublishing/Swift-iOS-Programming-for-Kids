//
//  ViewController.swift
//  Movie Night
//
//  Created by Steffen D. Sommer on 15/01/2017.
//  Copyright © 2017 Steffen D. Sommer. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var movies: [String] = []
    let alert = UIAlertController(title: "Add movie", message: "What movie do you want to add?", preferredStyle:.alert)
    let storageKey = "myMovies"


    // MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup app notifications
        NotificationCenter.default.removeObserver(self, name: .UIApplicationWillResignActive, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(saveMovies), name: .UIApplicationWillResignActive, object: nil)

        // Setup add movie alert
        setupAddMovieAlert()

        // Load movies
        loadMovies()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("disappeareing")
    }


    // MARK: UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }


    // MARK: UITableViewDelegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else {
            return
        }
        movies.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }


    // MARK: IB Actions

    @IBAction func addTapped(_ sender: Any) {
        present(alert, animated: true, completion:nil)
    }


    // MARK: Helpers

    func setupAddMovieAlert() {
        // Setup textfield
        alert.addTextField()

        // Action for add
        alert.addAction(UIAlertAction(title: "Add", style: .default) { action in
            guard let text = self.alert.textFields?.first?.text else {
                return
            }
            guard text.characters.count > 0 else {
                return
            }

            // Reset textfield
            self.alert.textFields?.first?.text = ""

            // Add movie
            self.movies.append(text)
            self.tableView.reloadData()
        })

        // Action for cancel
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    }

    func loadMovies() {
        guard let movies = UserDefaults.standard.array(forKey: storageKey) as? [String] else {
            return
        }
        self.movies = movies
    }

    @objc func saveMovies() {
        UserDefaults.standard.setValue(movies, forKey: storageKey)
        UserDefaults.standard.synchronize()
    }
}
