//
//  ArticleMD.swift
//  News Report
//
//  Created by Anthony Awuzie on 7/11/20.
//

import Foundation

struct Article: Codable {
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let content: String
    
    enum CodingKeys: String, CodingKey {
        case author
        case title
        case description
        case url
        case urlToImage
        case content
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.author = try (container.decodeIfPresent(String.self, forKey: .author) ?? "")
        self.title = try (container.decodeIfPresent(String.self, forKey: .title) ?? "")
        self.description = try (container.decodeIfPresent(String.self, forKey: .description) ?? "")
        self.url = try (container.decodeIfPresent(String.self, forKey: .url) ?? "")
        self.urlToImage = try (container.decodeIfPresent(String.self, forKey: .urlToImage) ?? "")
        self.content = try (container.decodeIfPresent(String.self, forKey: .content) ?? "")
    }
        
    
        }
