//
//  TitleLabelView.swift
//  HarryPotterBookSeries
//
//  Created by 천성우 on 3/27/25.
//

import UIKit

import Then
import SnapKit

class TitleLabelView: BaseView {
    
    // MARK: - UI Components
    
    private let titleLabel = UILabel()
    
    
    override func setStyles() {
        titleLabel.do {
            $0.textColor = UIColor(hex: "#000000")
            $0.font = .boldSystemFont(ofSize: 24)
            $0.textAlignment = .center
            $0.numberOfLines = 2
        }
    }
    
    // MARK: - Layout Helper
    
    override func setLayout() {
        addSubviews(titleLabel)
        
        titleLabel.snp.makeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
        }
    }
    
    // MARK: - Methods
    
    func getTitleLabel() -> UILabel {
        return titleLabel
    }
}


// dateForm -> 리소스가 많이 든다. ??
// snapkit -> inset과 offset 사용 할 때 상황이 다른점이 있는가?
// Then 라이브러리를 사용할 때 do와 then의 차이가 있나? -> 성능 차이? 아니면 다른 예외사항 처리?
