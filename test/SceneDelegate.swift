//
//  SceneDelegate.swift
//  test
//
//  Created by Alexey Tarasov on 27/02/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowsScene)
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
    }
}
