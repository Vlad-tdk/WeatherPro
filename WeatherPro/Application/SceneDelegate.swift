//
//  SceneDelegate.swift
//  WeatherPro
//
//  Created by Vladimir Martemianov on 17.4.25..
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Создаем окно приложения
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
        // Инициализируем и запускаем координатор приложения
        appCoordinator = AppCoordinator(window: window)
        appCoordinator?.start()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Вызывается при отключении сцены
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Вызывается, когда сцена становится активной
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Вызывается, когда сцена становится неактивной
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Вызывается, когда сцена переходит на передний план
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Вызывается, когда сцена переходит в фоновый режим
    }
}
