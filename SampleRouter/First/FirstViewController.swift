//
//  FirstViewController.swift
//  SampleRouter
//
//  Created by  on 2021/3/2.
//

import UIKit

final class FirstViewController: UIViewController {
    // storyboardからVCを生成する
    static func makeFromStoryboard() -> FirstViewController {
        let vc = UIStoryboard(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
        return vc
    }

    @IBOutlet private var nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }

    @objc func tapNextButton(_: UIResponder) {
        Router.shared.showSecond(from: self)
    }
}
