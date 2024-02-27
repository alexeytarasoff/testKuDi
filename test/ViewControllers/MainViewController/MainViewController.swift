//
//  MainViewController.swift
//  test
//
//  Created by Alexey Tarasov on 27/02/2024.
//

import UIKit
import Combine

final class MainViewController: UIViewController {
    private let viewModel = MainViewModel()
    private var subscriptions = Set<AnyCancellable>()
    private let mainView = MainView()

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    override func loadView() {
        view = mainView
    }
    
    // MARK: - Private
    
    private func setupBindings() {
        viewModel.$title
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [unowned self] title in
                mainView.updateTitle(title)
            })
            .store(in: &subscriptions)
        
        viewModel.$background
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [unowned self] color in
                mainView.updateBackground(color)
            })
            .store(in: &subscriptions)
        
        mainView.button.addAction(UIAction { [unowned self] _ in
            viewModel.buttonPressed()
        }, for: .touchUpInside)
    }
}

