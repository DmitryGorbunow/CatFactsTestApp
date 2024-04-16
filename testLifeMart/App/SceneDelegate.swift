//
//  SceneDelegate.swift
//  testLifeMart
//
//  Created by Nikita Dmitriev on 12.04.2024.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = UIHostingController(rootView: CatFactsListView())
        self.window = window
        window.makeKeyAndVisible()
    }
}

