//
//  String.swift
//  test
//
//  Created by Alexey Tarasov on 27/02/2024.
//

import Foundation

extension String {
    func localizedString() -> String {
        NSLocalizedString(self, comment: "")
    }
}
