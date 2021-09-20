//
//  AppDelegate.swift
//  SampleRouter
//
//  Created by sakiyamaK on 2021/01/16.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

//        let window = UIWindow(frame: UIScreen.main.bounds)

//        let vc = UIViewController()
//        vc.view.backgroundColor = .red
//
//        window.rootViewController = vc
//        window.makeKeyAndVisible()
//
//        self.window = window

        Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
        return true
    }
}

