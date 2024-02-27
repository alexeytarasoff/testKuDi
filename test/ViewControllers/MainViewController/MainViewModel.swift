//
//  ViewModel.swift
//  test
//
//  Created by Alexey Tarasov on 27/02/2024.
//

import Combine
import UIKit

final class MainViewModel {
    @Published private(set) var title: String = Strings.mainLabelText.localized
    @Published private(set) var background: UIColor = .white

    func buttonPressed() {
        Task {
            try await changeTitle()
        }
    }
    
    // MARK: - Private
    
    private func changeTitle() async throws {
        try await Task.sleep(until: .now + .seconds(1), clock: .continuous)
        title = title.appending("I")
        background = .yellow
    }
}

