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
    
    private let summaryLabel = UILabel()
    private let summaryTextView = UITextView()
    private let summaryStackView = UIStackView()
    
    override func setStyles() {
        summaryLabel.do {
            $0.text = "Summary"
            $0.textColor = UIColor(hex: "#000000")
            $0.font = .boldSystemFont(ofSize: 18)
        }
        
        summaryTextView.do {
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = UIColor(hex: "#555555")
            $0.isScrollEnabled = false
            $0.textContainerInset = .zero
            $0.textContainer.lineFragmentPadding = 0
        }
        
        summaryStackView.do {
            $0.axis = .vertical
            $0.spacing = 8
            $0.alignment = .fill
        }
        
    }
    
    // MARK: - Layout Helper
    
    override func setLayout() {
        addSubviews(summaryStackView)
        summaryStackView.addArrangedSubviews(summaryLabel, summaryTextView)

        summaryStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    
        summaryTextView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
        }

    }
    
    // MARK: - Methods
    
    func configure(_ data: BookModel) {
        summaryTextView.text = data.summary
    }
    

}
