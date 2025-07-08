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
        label.text = "Label gggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwrgggggggggggggggertegergeregegegrewgregwr"
        label.textColor = .label
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let title = "Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd v Button bvc dh d us dshsu suhd v v Button bvc dh d us dshsu suhdv Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd v Button bvc dh d us dshsu suhd v v Button bvc dh d us dshsu suhdv Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd v Button bvc dh d us dshsu suhd v v Button bvc dh d us dshsu suhdv Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd Button bvc dh d us dshsu suhd"
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.lineBreakMode = .byTruncatingTail
        button.titleLabel!.numberOfLines = 1

        
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
            containerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            containerView.topAnchor.constraint(equalTo: label.topAnchor, constant: 16),
            containerView.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: 16),

            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            label.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -8),
            
            button.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 16),
            button.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
            button.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50),
            button.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50),
        ])

    }
}

#Preview {
    Task2ViewController()
}
