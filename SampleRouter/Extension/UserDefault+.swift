//
//  UserDefault+.swift
//  SampleRouter
//
//  Created by sakiyamaK on 2021/03/02.
//

import Foundation

extension UserDefaults {
    private var loginedKey: String { "logined" }
    var isLogined: Bool {
        set {
            setValue(newValue, forKey: loginedKey)
        }
        get {
            bool(forKey: loginedKey)
        }
    }
}
