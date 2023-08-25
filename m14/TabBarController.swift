//
//  TabBarController.swift
//  m14
//
//  Created by Кирилл Кошкарёв on 18.08.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }
    
    private func generateVS(viewController: UIViewController, title: String) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = UIImage(systemName: "folder")
        return navigationController
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVS(viewController: FirstViewController(), title: "TASK 1"),
            generateVS(viewController: SecondViewController(), title: "TASK 2")
        ]
    }
    
}
