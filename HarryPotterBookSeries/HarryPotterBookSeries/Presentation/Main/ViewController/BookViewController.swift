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
    private let dedicationStackView = DedicationStackView()
    private let summaryStackView = SummaryStackView()
    private let chaptersView = ChaptersView()
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    
    
    // MARK: - Properties
    
    private var bookData: [BookModel] = []
    
    override func bindViewModel() {
        
        summaryStackView.getToggleMoreButton().rx.tap
            .subscribe(onNext: { [weak self] in
                self?.viewModel.inputs.didTapMoreButton()
            })
            .disposed(by: disposeBag)
        
        viewModel.outputs.isTapMoreButton
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] isExpanded in
                self?.summaryStackView.setExpanded(isExpanded)
            })
            .disposed(by: disposeBag)
        
        viewModel.outputs.bookData
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { [weak self] data in
                self?.bookData = data
                if let testData = self?.bookData[0] {
                    self?.bookTitleView.getTitleLabel().text = testData.title
                    self?.bookInformationStackView.configure(testData)
                    self?.dedicationStackView.configure(testData)
                    self?.summaryStackView.configure(testData)
                    self?.chaptersView.configure(testData)
                }
            })
            .disposed(by: disposeBag)
    }
    
    override func setStyles() {
        view.backgroundColor = UIColor(hex: "#FFFFFF")
        
        scrollView.do {
            $0.showsVerticalScrollIndicator = false
        }
        
        stackView.do {
            $0.axis = .vertical
            $0.spacing = 24
            $0.alignment = .fill
            $0.distribution = .fill
            $0.isLayoutMarginsRelativeArrangement = true // ✅ 이거 추가
        }
    }
    
    override func setLayout() {
        view.addSubviews(bookTitleView, bookTopStackView, scrollView)
        scrollView.addSubviews(stackView)
        stackView.addArrangedSubviews(bookInformationStackView, dedicationStackView, summaryStackView, chaptersView)
        
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
    
        scrollView.snp.makeConstraints {
            $0.top.equalTo(bookTopStackView.snp.bottom).offset(10)
            $0.directionalHorizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.bottom.equalToSuperview()
        }
        
        stackView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.width.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
}



