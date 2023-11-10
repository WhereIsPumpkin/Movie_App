//  MainTabBarViewController.swift
//  MovieApp
//  Created by Saba Gogrichiani on 10.11.23.
//

import UIKit

final class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBarViews()
    }
    
    // MARK: - Setup Tab Bar Views
    private func setUpTabBarViews() {
        let homeVC = createHomeVC()
        let upcomingVC = createUpcomingVC()
        let searchVC = createSearchVC()
        let downloadsVC = createDownloadsVC()
        
        setViewControllers([homeVC, upcomingVC, searchVC, downloadsVC], animated: true)
    }
    
    // MARK: - Create TabBarItem View Controllers
    private func createHomeVC() -> UINavigationController {
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.title = "Home"
        return homeVC
    }
    
    private func createUpcomingVC() -> UINavigationController {
        let upcomingVC = UINavigationController(rootViewController: UpcomingViewController())
        upcomingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        upcomingVC.title = "Coming Soon"
        return upcomingVC
    }
    
    private func createSearchVC() -> UINavigationController {
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchVC.title = "Top Search"
        return searchVC
    }
    
    private func createDownloadsVC() -> UINavigationController {
        let downloadsVC = UINavigationController(rootViewController: DownloadsViewController())
        downloadsVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        downloadsVC.title = "Downloads"
        return downloadsVC
    }
}
