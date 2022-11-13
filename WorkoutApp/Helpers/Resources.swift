//
//  Resources.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 13.11.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hex: 0x437BFE)
        static let inactive = UIColor(hex: 0x929DA5)
        static let separator = UIColor(hex: 0xE8ECEF)
        
        static let background = UIColor(hex: 0xF8F9F9)
        static let appTextGrayColor = UIColor(hex: 0x545C77)
    }
    
    enum Fonts {
        static func helveticaRegular(withSize size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static let overview = UIImage(named: "overview_tab")
            static let session = UIImage(named: "session_tab")
            static let progress = UIImage(named: "progress_tab")
            static let settings = UIImage(named: "settings_tab")
        }
    }
}
