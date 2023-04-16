//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 06.04.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    //MARK: - Properties
    
    //MARK: - UI Elements
    
    private let vc1: UINavigationController = {
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.title = "Home"
        return vc1
    }()
    
    private let vc2: UINavigationController = {
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc2.title = "Coming Soon"
        return vc2
    }()
    
    private let vc3: UINavigationController = {
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.title = "Top Searches"
        return vc3
    }()
    
    private let vc4: UINavigationController = {
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        vc4.title = "Downloads"
        return vc4
    }()
    
    
    //MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        tabBar.tintColor = .label
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
}

