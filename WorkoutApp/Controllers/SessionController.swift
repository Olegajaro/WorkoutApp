//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//


import UIKit

class SessionController: BaseController {
    
    private let timerView: TimerView = {
        let view = TimerView() 
        return view
    }()
    
}

extension SessionController {
    override func addViews() {
        super.addViews()
        
        view.addView(timerView)
    }
    
    override func layoutViews() {
        super.layoutViews()
                
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(atPosition: .left, withTitle: Resources.Strings.Session.navBarLeft)
        addNavBarButton(atPosition: .right, withTitle: Resources.Strings.Session.navBarRight)
        timerView.addButtonAction(#selector(buttonAction), with: self)
    }
    
    override func leftBarButtonItemAction() {
        print("DEBUG: session nav bar left button tapped")
    }
    
    override func rightBarButtonItemAction() {
        print("DEBUG: session nav bar right button tapped")
    }
    
    @objc
    func buttonAction() {
        print("DEBUG: tap button")
    }
}
