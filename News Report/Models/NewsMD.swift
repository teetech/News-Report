//
//  NewsMD.swift
//  News Report
//
//  Created by Anthony Awuzie on 7/13/20.
//

import Foundation

struct News: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
    
    
    enum CodingKeys: String, CodingKey {
        case status
        case totalResults
        case articles
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try (container.decodeIfPresent(String.self, forKey: .status) ?? "")
        self.totalResults = try (container.decodeIfPresent(Int.self, forKey: .totalResults) ?? 0)
        self.articles = try (container.decodeIfPresent([Article].self, forKey: .articles) ?? [])
    }
}
