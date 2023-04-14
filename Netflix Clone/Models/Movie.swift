//
//  Movies.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 14.04.2023.
//

import Foundation

struct TrendingMoviesResponse {
    let results: [Movie]
}

struct Movie {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
