//
//  ViewController.swift
//  Surf-Student-Project
//
//  Created by Данил Акимов on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
//    private let mainImageView = MainImageView(image: UIImage(named: "background"))
    private let horizontalMenu = HorizontalMenuCollectionView()
    private let aditionalCollectionView = AditionalCollectionView()
    private let qaFlutterPMCollectionView = QaPMFlutterCollectionView()
    private let topLabelStackView = TopLabelView()
    
    
    private let bottomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = R.Labels.bottomLabel
        label.font = UIFont(name: "Helvetica", size: 14)
        label.textColor = R.Colors.titleGray
        return label
    }()
    
    private let bottomButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(R.Labels.bottomButton, for: .normal)
        button.backgroundColor = R.Colors.directionsColor
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 26
        return button
    }()
    
    private let midleLabel: UILabel = {
        let label = UILabel()
        label.text = R.Labels.midleLabel
        label.font = UIFont(name: "Helvetica", size: 14)
        label.textColor = R.Colors.titleGray
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
        setConstraints()
     
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(horizontalMenu)
        view.addSubview(aditionalCollectionView)
        view.addSubview(qaFlutterPMCollectionView)
        view.addSubview(topLabelStackView)
        view.addSubview(midleLabel)
        view.addSubview(bottomButton)
        view.addSubview(bottomLabel)
        bottomButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)

        
    }
    
    @objc func showAlert() {
         let alert = UIAlertController(title: "Поздравляем!", message: "Ваша заявка успешно отправлена!", preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "Закрыть", style: .default))
         self.present(alert, animated: true, completion: nil)

     }
    
}

extension ViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            horizontalMenu.topAnchor.constraint(equalTo: topLabelStackView.bottomAnchor),
            horizontalMenu.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            horizontalMenu.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            horizontalMenu.heightAnchor.constraint(equalToConstant: 44),
            
            aditionalCollectionView.topAnchor.constraint(equalTo: midleLabel.bottomAnchor, constant: 12),
            aditionalCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            aditionalCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            aditionalCollectionView.heightAnchor.constraint(equalToConstant: 44),
            
            qaFlutterPMCollectionView.topAnchor.constraint(equalTo: aditionalCollectionView.bottomAnchor, constant: 12),
            qaFlutterPMCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            qaFlutterPMCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            qaFlutterPMCollectionView.heightAnchor.constraint(equalToConstant: 44),
        
            topLabelStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            topLabelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            topLabelStackView.heightAnchor.constraint(equalToConstant: 120),
            
            midleLabel.topAnchor.constraint(equalTo: horizontalMenu.bottomAnchor, constant: 12),
            midleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            midleLabel.widthAnchor.constraint(equalToConstant: 350),

            bottomLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            bottomLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64),
            
            bottomButton.leadingAnchor.constraint(equalTo: bottomLabel.trailingAnchor, constant: 24),
            bottomButton.centerYAnchor.constraint(equalTo: bottomLabel.centerYAnchor),
            bottomButton.widthAnchor.constraint(equalToConstant: 216),
            bottomButton.heightAnchor.constraint(equalToConstant: 60)
            
            
            
//            mainImageView.topAnchor.constraint(equalTo: horizontalMenu.bottomAnchor, constant: 10),
//            mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            mainImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
//            mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20)
        ])
    }
    
}
