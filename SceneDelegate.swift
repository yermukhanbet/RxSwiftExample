//
//  SceneDelegate.swift
//  RxSwiftExample
//
//  Created by Yessen Yermukhanbet on 8/13/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let vc = MainVCFactory.make()
        window = UIWindow(windowScene: scene)
        window?.makeKeyAndVisible()
        window?.rootViewController = vc
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

