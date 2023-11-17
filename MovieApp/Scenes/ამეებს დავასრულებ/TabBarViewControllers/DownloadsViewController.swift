//
//  DownloadsViewController.swift
//  MovieApp
//
//  Created by Saba Gogrichiani on 10.11.23.
//

import UIKit

// MARK: - DownloadsViewController

final class DownloadsViewController: UIViewController {
    
    // MARK: Properties
    
    let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "🚧 Under Development 🚧"
        label.textColor = .systemRed
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Private Functions
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(mainLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
