//
//  ProgressController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(atPosition: .left, withTitle: "Export")
        addNavBarButton(atPosition: .right, withTitle: "Details")
    }
    
    override func leftBarButtonItemAction() {
        print("DEBUG: progress nav bar left button tapped")
    }
    
    override func rightBarButtonItemAction() {
        print("DEBUG: progress nav bar right button tapped")
    }
}

