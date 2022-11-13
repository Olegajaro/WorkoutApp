//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//


import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.NavBar.overview
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(atPosition: .left, withTitle: Resources.Strings.Session.navBarLeft)
        addNavBarButton(atPosition: .right, withTitle: Resources.Strings.Session.navBarRight)
    }
    
    override func leftBarButtonItemAction() {
        print("DEBUG: session nav bar left button tapped")
    }
    
    override func rightBarButtonItemAction() {
        print("DEBUG: session nav bar right button tapped")
    }
}
