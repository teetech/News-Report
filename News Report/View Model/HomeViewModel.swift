//
//  HomeViewModel.swift
//  News Report
//
//  Created by Anthony Awuzie on 7/12/20.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    init() {
        getTopheadLines()
    }
    @Published var topHeadlines = [Article]()
    
    func getTopheadLines() {
        Endpoints.getTopHeadLines{
            self.topHeadlines = $0.articles
        }
        print(topHeadlines)
    }
}

