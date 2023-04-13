//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 14.04.2023.
//

import Foundation

struct Constants {
    static let API_KEY = "dc21cb89481d6ff637c9ef780e1d0eab"
    static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (String) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(results)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
