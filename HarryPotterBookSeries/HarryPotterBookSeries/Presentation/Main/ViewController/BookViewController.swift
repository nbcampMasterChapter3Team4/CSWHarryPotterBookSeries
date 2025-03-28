//
//  BookViewController.swift
//  HarryPotterBookSeries
//
//  Created by 천성우 on 3/26/25.
//

import UIKit

import Then
import SnapKit
import RxSwift
import RxCocoa

final class BookViewController: BaseViewController {
    
    
    private let viewModel = BookViewModel()
    private let disposeBag = DisposeBag()
    
    // MARK: - UI Components
    
    private let bookTitleView = TitleLabelView()
    private let bookTopStackView = BookIndexStackView()
    private let bookInformationStackView = BookInformationStackView()
    
    
    // MARK: - Properties
    
    private var bookData: [BookModel] = []
    
    override func bindViewModel() {
        viewModel.outputs.bookData
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] data in
                self?.bookData = data
                if let testData = self?.bookData[0] {
                    self?.bookTitleView.getTitleLabel().text = testData.title
                    self?.bookInformationStackView.configure(testData)
                }
            })
            .disposed(by: disposeBag)
    }
    
    override func setStyles() {
        view.backgroundColor = UIColor(hex: "#FFFFFF")
    }
    
    override func setLayout() {
        view.addSubviews(bookTitleView, bookTopStackView, bookInformationStackView)
        
        bookTitleView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(60)
        }
        
        bookTopStackView.snp.makeConstraints {
            $0.top.equalTo(bookTitleView.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
        }
        
        bookInformationStackView.snp.makeConstraints {
            $0.top.equalTo(bookTopStackView.snp.bottom).offset(10)
            $0.leading.equalTo(view.safeAreaLayoutGuide).offset(5)
            $0.trailing.equalTo(view.safeAreaLayoutGuide).offset(-5)
        }
    }
    
    
}



