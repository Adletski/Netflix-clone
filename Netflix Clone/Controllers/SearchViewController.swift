//
//  SearchViewController.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 06.04.2023.
//

import UIKit

class SearchViewController: UIViewController {
    
    private let upcomingTable: UITableView = {
       let tableView = UITableView()
        tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: SearchTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
    



}
