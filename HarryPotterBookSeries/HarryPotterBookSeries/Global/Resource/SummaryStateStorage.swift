//
//  SummaryStateStorage.swift
//  HarryPotterBookSeries
//
//  Created by 천성우 on 4/1/25.
//

import Foundation

enum SummaryStateStorage {
    private static let key = "isSummaryExpanded"

    static var isExpanded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: key) // 기본값 false
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
