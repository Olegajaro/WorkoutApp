//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Олег Федоров on 19.11.2022.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

@objc extension BaseView {
    
    func addViews() {}
    func layoutViews() {}
    func configureViews() {}
    
}
