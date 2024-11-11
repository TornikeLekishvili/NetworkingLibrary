//
//  File.swift
//  NetworkingLibrary
//
//  Created by Mac User on 11.11.24.
//

import Foundation

public struct News_Feed_Modularization_Model: Codable {
    public let articles: [Article]
    
    public init(articles: [Article]) {
        self.articles = articles
    }
}

public struct Article: Codable {
    public let title: String
    public let description: String?
    public let url: String?
    public let urlToImage: String?
    public let publishedAt: String?
    

}

