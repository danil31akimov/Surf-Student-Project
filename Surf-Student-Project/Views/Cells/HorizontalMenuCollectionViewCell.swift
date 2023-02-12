//
//  HorizontalMenuCollectionViewCell.swift
//  Surf-Student-Project
//
//  Created by Данил Акимов on 11.02.2023.
//

import UIKit

class HorizontalMenuCollectionViewCell: UICollectionViewCell {
    
    let directionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = R.Colors.directionsColor
        label.font = UIFont(name: "Arial Bold", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    override var isSelected: Bool {
        didSet {
            backgroundColor = self.isSelected ? R.Colors.active : R.Colors.inActive
            directionLabel.textColor = self.isSelected ? .white : R.Colors.directionsColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = R.Colors.inActive
        layer.cornerRadius = 12
        
        addSubview(directionLabel)
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            directionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            directionLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
