//
//  MainView.swift
//  Surf-Student-Project
//
//  Created by Данил Акимов on 10.02.2023.
//

import UIKit

class MainImageView: UIImageView {
    
    override init(image: UIImage?) {
        super.init(image: image)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        layer.cornerRadius = 10
        contentMode = .scaleAspectFill
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
