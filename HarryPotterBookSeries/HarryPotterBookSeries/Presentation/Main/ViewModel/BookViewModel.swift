//
//  BookViewModel.swift
//  HarryPotterBookSeries
//
//  Created by 천성우 on 3/27/25.
//

import UIKit

import RxCocoa
import RxSwift

protocol BookViewModelInput {
    // 사용자의 입력 여기에 이제 더보기 기능 버튼을 누를 경우가 들어갈 것
    func didTapMoreButton()
}

protocol BookViewModelOutput {
    var bookData: BehaviorRelay<[BookModel]> { get }
    var isTapMoreButton: BehaviorRelay<Bool> { get }
}

protocol BookViewModelType {
    var inputs: BookViewModelInput { get }
    var outputs: BookViewModelOutput { get }
}

final class BookViewModel: BookViewModelInput, BookViewModelOutput, BookViewModelType {
    
    
    var bookData: BehaviorRelay<[BookModel]> = BehaviorRelay(value: [])
    var isTapMoreButton: BehaviorRelay<Bool> = BehaviorRelay(value: SummaryStateStorage.isExpanded)
    var inputs: BookViewModelInput { return self }
    var outputs: BookViewModelOutput { return self }
    
    private let bookService = BookService()
    
    init() {
        getBookInformation()
    }
    
    func didTapMoreButton() {
        let current = isTapMoreButton.value
        let toggled = !current
        isTapMoreButton.accept(toggled)
        SummaryStateStorage.isExpanded = toggled
    }
    
    func getBookInformation() {
        bookService.fetchBooks { result in
            switch result {
            case .success(let books):
                self.bookData.accept(books)
                books.forEach { book in
                    print("- \(book.title) by \(book.author)")
                }
            case .failure(let error):
                print("🚨 오류 발생: \(error)")
            }
        }
    }
}
