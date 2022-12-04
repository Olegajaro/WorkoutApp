//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//


import UIKit

class SessionController: BaseController {
    
    private let timerView = TimerView()
    private let timerDuration = 3.0
    
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
            timerView.heightAnchor.constraint(equalToConstant: 500)
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(atPosition: .left, withTitle: Resources.Strings.Session.navBarStart)
        addNavBarButton(atPosition: .right, withTitle: Resources.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
    }
    
    override func leftBarButtonItemAction() {
        if timerView.state == .isStopped || timerView.state == .isPaused {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isStarted ? .isPaused : .isStarted
        setTitleForNavBarButton(timerView.state == .isStarted
                                ? Resources.Strings.Session.navBarPause
                                : Resources.Strings.Session.navBarStart,
                                atPosition: .left)
    }
    
    override func rightBarButtonItemAction() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        setTitleForNavBarButton(Resources.Strings.Session.navBarStart,
                                atPosition: .left)
    }
    
    @objc
    func buttonAction() {
        print("DEBUG: tap button")
    }
}
