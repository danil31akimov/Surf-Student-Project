//
//  TopLabelView.swift
//  Surf-Student-Project
//
//  Created by Данил Акимов on 11.02.2023.
//

import UIKit

final class TopLabelView: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = R.Labels.titleLabel
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
//        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = R.Colors.directionsColor
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = R.Labels.subtitleLabel
//        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        label.font = .systemFont(ofSize: 14, weight: .regular)

        label.textColor = R.Colors.titleGray
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)

       
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            titleLabel.heightAnchor.constraint(equalToConstant: 32),
            titleLabel.widthAnchor.constraint(equalToConstant: 350),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 60),
            subtitleLabel.widthAnchor.constraint(equalToConstant: 350),
            subtitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
    }
    
}
