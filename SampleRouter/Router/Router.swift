//
//  Router.swift
//  SampleRouter
//
//  Created by sakiyamaK on 2021/01/16.
//

import UIKit

// 画面遷移を管理
final class Router {

  static let shared: Router = .init()
  private init() {}

  private (set) var window: UIWindow?

  // 起動直後の画面を表示する
  func showRoot(window: UIWindow?) {
    //パラメータから初期画面を切り替える
    if !UserDefaults.standard.isLogined {
      let vc = FirstViewController.makeFromStoryboard()
      let nav = UINavigationController(rootViewController: vc)
      window?.rootViewController = nav
    } else {
      let vc = SecondViewController.makeFromStoryboard()
      let nav = UINavigationController(rootViewController: vc)
      window?.rootViewController = nav
    }
    window?.makeKeyAndVisible()
    self.window = window
  }

  func showFirst(from: UIViewController) {
    let vc = FirstViewController.makeFromStoryboard()
    show(from: from, next: vc)
  }

  func showSecond(from: UIViewController) {
    let vc = SecondViewController.makeFromStoryboard()
    show(from: from, next: vc)
  }

  func showThird(from: UIViewController, countModel: CountModel) {
    let vc = ThirdViewController.makeFromStoryboard(countModel: countModel)
    show(from: from, next: vc)
  }

  func showReStart() {
    UserDefaults.standard.isLogined = [true, false].randomElement()!
    // 最初から画面を構築しなおす
    showRoot(window: window)
  }
}

private extension Router {
  func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
    if let nav = from.navigationController {
      nav.pushViewController(next, animated: animated)
    } else {
      from.present(next, animated: animated, completion: nil)
    }
  }
}
