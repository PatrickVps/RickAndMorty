//
//  Character.swift
//  RickAndMorty
//
//  Created by Patrick VONGPRASEUTH on 02/04/2021.
//

import Foundation


// MARK: - CharacterContainer
struct CharacterContainer: Codable {
    let info: Info
    let results: [Character]
}

// MARK: - Info
struct Info: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
    
    init() {
        count = 0
        pages = 0
        next = ""
        prev = ""
    }
}

struct Character : Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
    init() {
        id = 0
        name = ""
        status = ""
        species = ""
        type = ""
        gender = ""
        origin = Location()
        location = Location()
        image = ""
        episode = []
        url = ""
        created = ""
    }
}

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
    
    init() {
        name = ""
        url = ""
    }
}
