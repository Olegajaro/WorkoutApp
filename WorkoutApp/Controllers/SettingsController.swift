//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

class SettingsController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.NavBar.settings
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
    
}
