//
//  SecondViewController.swift
//  SampleRouter
//
//  Created by  on 2021/3/2.
//

import UIKit

final class SecondViewController: UIViewController {

  //storyboardからVCを生成する
  static func makeFromStoryboard() -> SecondViewController {
    let vc = UIStoryboard.secondViewController
    return vc
  }

  private var countModel = CountModel.init(count: 0)

  @IBOutlet private weak var countLabel: UILabel! {
    didSet {
      countLabel.text = countModel.count.description
    }
  }

  @IBOutlet private weak var countUpButton: UIButton! {
    didSet {
      countUpButton.addTarget(self, action: #selector(tapNextcountUpButton(_:)), for: .touchUpInside)
    }
  }

  @objc private func tapNextcountUpButton(_ sender: UIResponder) {
    countModel.count += 1
    countLabel.text = countModel.count.description
  }


  @IBOutlet private weak var nextButton: UIButton! {
    didSet {
      nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
    }
  }

  @objc private func tapNextButton(_ sender: UIResponder) {
    Router.shared.showThird(from: self, countModel: countModel)
  }
}
