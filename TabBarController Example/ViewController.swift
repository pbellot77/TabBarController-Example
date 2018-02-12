//
//  ViewController.swift
//  TabBarController Example
//
//  Created by Patrick Bellot on 2/12/18.
//  Copyright © 2018 Polestar Interactive LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .white
		
		createTabBarController()
	}

	func createTabBarController() {
		let tabBarController = UITabBarController()
		tabBarController.tabBar.tintColor = UIColor.black
		
		let firstVC = UIViewController()
		firstVC.title = "First"
		firstVC.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home"), tag: 0)
		
		let secondVC = UIViewController()
		secondVC.title = "Second"
		secondVC.tabBarItem = UITabBarItem(title: "Map", image: #imageLiteral(resourceName: "maps"), tag: 0)
		
		tabBarController.viewControllers = [firstVC, secondVC]
		
		let controllerArray = [firstVC, secondVC]
		tabBarController.viewControllers = controllerArray.map { UINavigationController.init(rootViewController: $0) }
		
		self.view.addSubview(tabBarController.view)
	}

}

