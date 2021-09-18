//
//  ThirdViewController.swift
//  SampleRouter
//
//  Created by  on 2021/3/2.
//

import UIKit

final class ThirdViewController: UIViewController {

    //storyboardからVCを生成する
    //初期化のパラメータを前の画面から渡す
    static func makeFromStoryboard(countModel: CountModel) -> ThirdViewController {
        let vc = UIStoryboard.thirdViewController
        vc.countModel = countModel
        return vc
    }

    private var countModel = CountModel.init(count: 0)

    @IBOutlet private weak var countLabel: UILabel! {
        didSet {
            countLabel.text = "前の画面から渡された情報: \(countModel.count.description)"
        }
    }

    @IBOutlet private weak var reStartButton: UIButton! {
        didSet {
            reStartButton.addTarget(self, action: #selector(tapReStartButton(_:)), for: .touchUpInside)
        }
    }

    @objc private func tapReStartButton(_ sender: UIResponder) {
        Router.shared.showReStart()
    }
}
