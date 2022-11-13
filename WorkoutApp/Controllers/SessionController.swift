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
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(atPosition: .left, withTitle: "Pause")
        addNavBarButton(atPosition: .right, withTitle: "Finish")
    }
    
    override func leftBarButtonItemAction() {
        print("DEBUG: session nav bar left button tapped")
    }
    
    override func rightBarButtonItemAction() {
        print("DEBUG: session nav bar right button tapped")
    }
}
