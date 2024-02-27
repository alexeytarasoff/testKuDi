//
//  MainView.swift
//  test
//
//  Created by Alexey Tarasov on 27/02/2024.
//

import UIKit
import PinLayout

final class MainView: UIView {
    let button = UIButton(type: .system)
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        button.pin
            .bottom(10%)
            .width(60%)
            .height(50)
            .hCenter()
        
        label.pin
            .above(of: button)
            .marginBottom(20)
            .sizeToFit()
            .right(to: button.edge.right)
    }
    
    func updateTitle(_ title: String) {
        label.text = title
        setNeedsLayout()
    }

    func updateBackground(_ color: UIColor) {
        backgroundColor = color
    }
    
    // MARK: - Private

    private func configUI() {
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.backgroundColor = .blue
        button.setTitle(Strings.mainButtonText.localized, for: .normal)
        addSubview(button)
        addSubview(label)
    }
}
