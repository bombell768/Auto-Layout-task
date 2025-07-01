//
//  Task2.swift
//  AutolatoutPracticalTasks
//
//  Created by Kakhaberi Kiknadze on 20.03.25.
//

import UIKit

// Build a UI programmatically with a UIButton positioned below a UILabel.
// The button should be centered horizontally and have a fixed distance from the label.
// Adjust the layout to handle different screen sizes.
final class Task2ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Label"
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        
        var config = UIButton.Configuration.filled()
        config.title = "Button"
        config.baseBackgroundColor = .systemBlue
        config.baseForegroundColor = .white
        config.cornerStyle = .large
        
        let button = UIButton(configuration: config)

        button.translatesAutoresizingMaskIntoConstraints = false
        
        let containerView = UIView()
        containerView.layer.cornerRadius = 10
        containerView.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(containerView)
        containerView.addSubview(label)
        containerView.addSubview(button)
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            containerView.leadingAnchor.constraint(greaterThanOrEqualTo: button.leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            label.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -8),
            
            button.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
//            button.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
            button.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16)

        ])
    }
}

#Preview {
    Task2ViewController()
}
