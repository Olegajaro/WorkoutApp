//
//  OverviewController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

class OverviewController: BaseController {
    
    private let topView = UIView()
    private let navBar = OverviewNavBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addView(topView)
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        
        topView.backgroundColor = .white
        navBar.addCustomButtonAction(#selector(customButtonAction), with: self)
        navBar.addAdditingAction(#selector(addAction), with: self)
    }
    
}

private extension OverviewController {
    @objc
    func customButtonAction() {
        print("DEBUG: custom button tapped")
    }
    
    @objc
    func addAction() {
        print("DEBUG: add button tapped")
    }
}
