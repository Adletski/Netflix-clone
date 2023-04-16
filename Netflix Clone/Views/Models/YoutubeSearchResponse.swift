//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Adlet Zhantassov on 16.04.2023.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
