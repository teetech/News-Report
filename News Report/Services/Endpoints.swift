//
//  Endpoints.swift
//  News Report
//
//  Created by Anthony Awuzie on 7/11/20.
//

import Foundation

class Endpoints {
    class func getTopHeadLines(completion: @escaping (News) -> ()) {
        URLSession.shared.dataTask(with: .TopheadLines) {(data, resp, err) in
            DispatchQueue.main.async {
                let topHeadlines = try! JSONDecoder().decode(News.self, from: data!)
                completion(topHeadlines)
            }
        }.resume()
    }
    
}

