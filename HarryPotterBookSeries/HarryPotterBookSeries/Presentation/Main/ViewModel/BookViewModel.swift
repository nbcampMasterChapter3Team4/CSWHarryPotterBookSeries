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
}

protocol BookViewModelOutput {
    
}

protocol BookViewModelType {
    var inputs: BookViewModelInput { get }
    var outputs: BookViewModelOutput { get }
}

final class BookViewModel: BookViewModelInput, BookViewModelOutput, BookViewModelType {
    
    var inputs: BookViewModelInput { return self }
    var outputs: BookViewModelOutput { return self }
    
    private let bookService = BookService()
    
    init() {
        getBookInformation()
    }
    
    
    func getBookInformation() {
        bookService.fetchBooks { result in
            switch result {
            case .success(let books):
                print("📚 불러온 책 목록:")
                books.forEach { book in
                    print("- \(book.title) by \(book.author)")
                    print("\(book)")
                }
            case .failure(let error):
                print("🚨 오류 발생: \(error)")
            }
        }
    }
}
