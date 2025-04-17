//
//  HomeCoordinator.swift
//  WeatherPro
//
//  Created by Vladimir Martemianov on 17.4.25..
//

import UIKit

// MARK: - Protocol delegate for HomeCoordinator
protocol HomeCoordinatorDelegate: AnyObject {
    func homeCoordinatorDidFinish(_ coordinator: HomeCoordinator)
}

// MARK: - Coordinator Main display
final class HomeCoordinator: Coordinator {
    func finish() {

    }
    
    func addChild(_ coordinator: any Coordinator) {
    }
    
    func removeChild(_ coordinator: any Coordinator) {

    }
    
    var childCoordinators: [any Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    var navigationController: UINavigationController
    
    func start() {
    
    }
}
