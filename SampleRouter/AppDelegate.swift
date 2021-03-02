//
//  AppDelegate.swift
//  SampleRouter
//
//  Created by sakiyamaK on 2021/01/16.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    // FirebaseApp.configure()

    Router.shared.showRoot(window: UIWindow(frame: UIScreen.main.bounds))
    return true
  }
}

