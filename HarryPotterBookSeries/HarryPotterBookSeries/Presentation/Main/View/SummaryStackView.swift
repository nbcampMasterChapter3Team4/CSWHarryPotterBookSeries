//
//  SummaryStackView.swift
//  HarryPotterBookSeries
//
//  Created by 천성우 on 3/28/25.
//

import UIKit

import Then
import SnapKit

class SummaryStackView: BaseView {
    
    // MARK: - UI Components
    
    private let dedicationLabel = UILabel()
    private let dedicationTextView = UITextView()
    private let dedicationStackView = UIStackView()
    private let summaryLabel = UILabel()
    private let summaryTextView = UITextView()
    private let summaryStackView = UIStackView()
    
    
    
    override func setStyles() {
        dedicationLabel.do {
            $0.text = "Dedication"
            $0.textColor = UIColor(hex: "#000000")
            $0.font = .boldSystemFont(ofSize: 18)
        }
        
        dedicationTextView.do {
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = UIColor(hex: "#555555") // UIColor.darkGray 색상과 일치하는 hex code 입니다.
        }
        
        dedicationStackView.do {
            $0.axis = .vertical
            $0.spacing = 10
            $0.alignment = .leading
        }
        
        summaryLabel.do {
            $0.text = "Summary"
            $0.textColor = UIColor(hex: "#000000")
            $0.font = .boldSystemFont(ofSize: 18)
        }
        
        summaryTextView.do {
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = UIColor(hex: "#555555")
        }
        
        summaryStackView.do {
            $0.axis = .vertical
            $0.spacing = 10
            $0.alignment = .leading
        }
        
    }
    
    // MARK: - Layout Helper
    
    override func setLayout() {

    }
    
    // MARK: - Methods
    

}
