//
//  Episode.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 02/04/2021.
//

import Foundation

struct EpisodeContainer: Codable {
    let info: Info
    let results: [Episode]
    
    enum CodingKeys: String, CodingKey {
        case info = "info"
        case results = "results"
    }
    
    init() {
        info = Info()
        results = []
    }
}

// MARK: - Episode
struct Episode: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }
    
    init() {
        id = 0
        name = ""
        airDate = ""
        episode = ""
        characters = []
        url = ""
        created = ""
    }
}
