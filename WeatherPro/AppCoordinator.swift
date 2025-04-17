//
//  AppCoordinator.swift
//  WeatherPro
//
//  Created by Vladimir Martemianov on 17.4.25..
//

import UIKit

// MARK: - Base protocol for All coordinators
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get }
    
    func start()
    func finish()
    func addChild(_ coordinator: Coordinator)
    func removeChild(_ coordinator: Coordinator)
}

// MARK: - Main coordinator App
final class AppCoordinator: Coordinator {
    func finish() {
        
    }
    
    func addChild(_ coordinator: any Coordinator) {

    }
    
    func removeChild(_ coordinator: any Coordinator) {

    }
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()
        setupAppearance()
    }
    
    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        showHome()
    }
    
    private func showHome() {
        let homeCoordinator = HomeCoordinator(navigationController: navigationController)
        homeCoordinator.start()
    }
    
    private func setupAppearance() {
        // Настройка внешнего вида навигационного бара
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "NavigationBarBackground")
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(named: "NavigationBarTitle") ?? .white,
            .font: UIFont.systemFont(ofSize: 18, weight: .semibold)
        ]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        
    }
}

