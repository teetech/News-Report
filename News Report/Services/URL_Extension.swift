//
//  URL_Extension.swift
//  News Report
//
//  Created by Anthony Awuzie on 7/12/20.
//

import Foundation

extension URL {
    static var TopheadLines: URL {
        makeForEndPoint("top-headlines?country=us&apiKey=95d6723b13e54161a72df112964fd015")
    }
}

private extension URL {
    static func makeForEndPoint(_ endpoint: String) -> URL {
        URL(string: "https://newsapi.org/v2/\(endpoint)")!
    }
}
