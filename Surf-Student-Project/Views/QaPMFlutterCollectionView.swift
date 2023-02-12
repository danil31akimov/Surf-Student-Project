//
//  QaPMFlutterCollectionView.swift
//  Surf-Student-Project
//
//  Created by Данил Акимов on 12.02.2023.
//


import UIKit

class QaPMFlutterCollectionView: UICollectionView {
    
    private let categoryLayout = UICollectionViewFlowLayout()
    private let nameDirectionsArray: [String] = ["QA", "Flutter", "PM"]
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: categoryLayout)
        configure()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        categoryLayout.minimumInteritemSpacing = 12
        categoryLayout.minimumLineSpacing = 12
        categoryLayout.scrollDirection = .horizontal
        
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
        showsHorizontalScrollIndicator = false
        delegate = self
        dataSource = self
        register(QaPMFlutterCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
}


// MARK: UICollectionViewDataSource
extension QaPMFlutterCollectionView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameDirectionsArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? QaPMFlutterCollectionViewCell else { return UICollectionViewCell() }
        cell.directionLabel.text = nameDirectionsArray[indexPath.item]
        return cell
    }
    

    
}

// MARK: UICollectionViewDelegate
extension QaPMFlutterCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.scrollToItem(at: indexPath, at: .left, animated: true)
    }
}

    

// MARK: UICollectionViewDelegateFlowLayout
extension QaPMFlutterCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let categoryFont = UIFont(name: "Arial Bold", size: 14)
        let categoryAttributes = [NSAttributedString.Key.font : categoryFont as Any]
        let categoryWidth = nameDirectionsArray[indexPath.item].size(withAttributes: categoryAttributes).width + 48
        
        
        
        return CGSize(width: categoryWidth,
               height: 44)
    }
}
