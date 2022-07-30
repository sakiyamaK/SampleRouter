//
//  ThirdViewController.swift
//  SampleRouter
//
//  Created by  on 2021/3/2.
//

import UIKit

final class ThirdViewController: UIViewController {
    // storyboardからVCを生成する
    // 初期化のパラメータを前の画面から渡す
    static func makeFromStoryboard(countModel: CountModel) -> ThirdViewController {
        let vc = UIStoryboard(name: "Third", bundle: nil).instantiateInitialViewController() as! ThirdViewController
        vc.countModel = countModel
        return vc
    }

    private var countModel = CountModel(count: 0)

    @IBOutlet private var countLabel: UILabel! {
        didSet {
            countLabel.text = "前の画面から渡された情報: \(countModel.count.description)"
        }
    }

    @IBOutlet private var reStartButton: UIButton! {
        didSet {
            reStartButton.addTarget(self, action: #selector(tapReStartButton(_:)), for: .touchUpInside)
        }
    }

    @objc private func tapReStartButton(_: UIResponder) {
        Router.shared.showReStart()
    }
}
