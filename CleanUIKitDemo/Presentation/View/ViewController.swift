//
//  ViewController.swift
//  CleanUIKitDemo
//
//  Created by Kumari Bhavana on 23/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView = UITableView()
    private let viewModel: MovieListViewModel

    init(viewModel: MovieListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) { fatalError() }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Movies"
        setupTableView()

        Task {
            await viewModel.loadMovies()
            tableView.reloadData()
        }
    }

    private func setupTableView() {
        tableView.frame = view.bounds
        tableView.dataSource = self
        view.addSubview(tableView)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.movies.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let movie = viewModel.movies[indexPath.row]
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = "\(movie.year)"
        return cell
    }
}

