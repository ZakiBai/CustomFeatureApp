//
//  ViewController.swift
//  CustomFeatureApp
//
//  Created by Zaki on 20.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
        addConstraints()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    func addViews() {
        view.addSubview(button)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }

    @objc private func buttonTapped() {
        print("Hello world")
    }
}

