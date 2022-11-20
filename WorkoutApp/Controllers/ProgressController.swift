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
        
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(atPosition: .left, withTitle: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(atPosition: .right, withTitle: Resources.Strings.Progress.navBarRight)
    }
    
    override func leftBarButtonItemAction() {
        print("DEBUG: progress nav bar left button tapped")
    }
    
    override func rightBarButtonItemAction() {
        print("DEBUG: progress nav bar right button tapped")
    }
}

