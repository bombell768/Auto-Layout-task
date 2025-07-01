//
//  Task4ViewController.swift
//  AutolatoutPracticalTasks
//
//  Created by Kakhaberi Kiknadze on 20.03.25.
//

import UIKit

// Create a view with two subviews aligned vertically when in Compact width, Regular height mode.
// If the orientation changes to Compact-Compact, same 2 subviews should be aligned horizontally.
// Hou can use iPhone 16 simulator for testing.
final class Task4ViewController: UIViewController {
    private let greenView = UIView()
    private let orangeView = UIView()
    
    private var activeConstraints: [NSLayoutConstraint] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        registerForTraitChanges()
    }
    
    private func registerForTraitChanges() {
        let sizeTraits: [UITrait] = [UITraitVerticalSizeClass.self, UITraitHorizontalSizeClass.self]
        registerForTraitChanges(sizeTraits) { (self: Self, previousTraitCollection: UITraitCollection) in
            self.updateLayoutConstraints(for: self.traitCollection)
            print("Trait collection changed:", self.traitCollection)
        }
    }
    
    private func setupViews() {
        greenView.backgroundColor = .green
        orangeView.backgroundColor = .orange
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(greenView)
        view.addSubview(orangeView)
        
        updateLayoutConstraints(for: traitCollection)
    }
    
    private func updateLayoutConstraints(for traitCollection: UITraitCollection) {
        NSLayoutConstraint.deactivate(activeConstraints)
        
        if traitCollection.verticalSizeClass == .regular && traitCollection.horizontalSizeClass == .compact {
            activeConstraints = [
                orangeView.topAnchor.constraint(equalTo: view.topAnchor),
                orangeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                orangeView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                orangeView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

                greenView.topAnchor.constraint(equalTo: orangeView.bottomAnchor),
                greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ]
        } else if traitCollection.verticalSizeClass == .compact && traitCollection.horizontalSizeClass == .compact {
            activeConstraints = [
                orangeView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                orangeView.topAnchor.constraint(equalTo: view.topAnchor),
                orangeView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                orangeView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),

                greenView.leadingAnchor.constraint(equalTo: orangeView.trailingAnchor),
                greenView.topAnchor.constraint(equalTo: view.topAnchor),
                greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ]
        }
        
        NSLayoutConstraint.activate(activeConstraints)
    }
}

#Preview {
    Task4ViewController()
}
