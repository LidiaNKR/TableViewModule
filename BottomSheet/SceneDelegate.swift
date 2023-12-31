//
//  SceneDelegate.swift
//  BottomSheet
//
//  Created by Лидия Ладанюк on 30.08.2023.
//

import UIKit
import AssemblyBuilder

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let assembly = AssemblyBuilder()
        let mainViewController = assembly.createTableViewModule()
        let navigationController = UINavigationController(rootViewController: mainViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

