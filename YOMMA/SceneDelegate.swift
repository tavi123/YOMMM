//
//  SceneDelegate.swift
//  YOMMA
//
//  Created by 전창평 on 4/30/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        //NavigationViewController 형태로 시작할때
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let rootVC = SplashView()
        let introNavigationVC = UINavigationController(rootViewController: rootVC)
        self.window?.rootViewController = introNavigationVC
        window?.makeKeyAndVisible()
    }
}

