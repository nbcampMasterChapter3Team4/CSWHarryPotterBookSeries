//
//  BookIndexCell.swift
//  HarryPotterBookSeries
//
//  Created by 천성우 on 4/1/25.
//


import UIKit

import Then
import SnapKit

final class BookIndexCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let id = "BookIndexCell"
    
    // MARK: - UI Components
    
    private let indexLabel = UILabel()

    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setSytle()
        setLayout()
    }
    
    private func setSytle() {
        contentView.layer.cornerRadius = 20
        contentView.clipsToBounds = true
        
        indexLabel.do {
            $0.font = .systemFont(ofSize: 14)
            $0.textAlignment = .center
            $0.textColor = .white
            $0.backgroundColor = UIColor(hex: "#007AFF")
            $0.clipsToBounds = true
        }
    }
    
    private func setLayout() {
        contentView.addSubview(indexLabel)
        
        indexLabel.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = contentView.frame.height / 2
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Configure
    
    func configure(index: Int) {
        indexLabel.text = "\(index + 1)"
    }
}
