//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Ismailov on 18.02.2025.
//

import UIKit

class GFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        UITabBar.appearance().backgroundColor = .systemBackground
        UITabBar.appearance().tintColor = .systemGreen
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }
    
    func createTabbar() -> UITabBarController {
        let tabbar = UITabBarController()
        tabbar.viewControllers = [createSearchNC(), createFavoritesNC()]
        
        return tabbar
    }
}
