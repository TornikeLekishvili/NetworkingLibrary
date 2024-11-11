// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class Networking {
    
    public static func fetchNewsData(urlString: String, completion: @escaping (News_Feed_Modularization_Model?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            completion(nil)
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                print("Error fetching news data:", error)
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(News_Feed_Modularization_Model.self, from: data)
                completion(decodedData)
            } catch {
                print("Error decoding data:", error)
                completion(nil)
            }
        }.resume()
    }
    
    public static func fetchImage(from urlString: String, completion: @escaping (UIImage?) -> Void) {
        guard let url = URL(string: urlString) else {
            print("Invalid image URL")
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching image:", error)
                completion(nil)
                return
            }
            
            if let data = data, let image = UIImage(data: data) {
                completion(image)
            } else {
                print("Could not convert data to image")
                completion(nil)
            }
        }.resume()
    }
    
    public init() {
    }
}
