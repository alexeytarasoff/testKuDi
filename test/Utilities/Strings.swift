//
//  Strings.swift
//  test
//
//  Created by Alexey Tarasov on 27/02/2024.
//

enum Strings: String {
    case mainLabelText = "Press Count: "
    case mainButtonText = "Push Me"

    var localized: String {
        self.rawValue.localizedString()
    }
}
