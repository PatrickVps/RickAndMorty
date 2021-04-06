//
//  CharacterTests.swift
//  RickAndMortyTests
//
//  Created by Patrick VONGPRASEUTH on 06/04/2021.
//

import XCTest
@testable import RickAndMorty

class CharacterTests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
    }

    override func tearDownWithError() throws {
        super.tearDown()
    }

    func testInitCharacterEmpty() throws {
        let character = Character()
        XCTAssertEqual(character.name, "")
        XCTAssertEqual(character.status, "")
        XCTAssertEqual(character.species, "")
        XCTAssertEqual(character.type, "")
        XCTAssertEqual(character.gender, "")
        XCTAssertEqual(character.image, "")
        XCTAssertEqual(character.url, "")
        XCTAssertEqual(character.created, "")
        XCTAssertTrue(character.episode.isEmpty)
        XCTAssertEqual(character.origin.name, "")
        XCTAssertEqual(character.origin.url, "")
        XCTAssertEqual(character.location.name, "")
        XCTAssertEqual(character.location.url, "")
    }
    
    func testInitCharacterFilled() throws {
        
        let json = "{\"id\":1,\"name\":\"Rick Sanchez\",\"status\":\"Alive\",\"species\":\"Human\",\"type\":\"\",\"gender\":\"Male\",\"origin\":{\"name\":\"Earth (C-137)\",\"url\":\"https://rickandmortyapi.com/api/location/1\"},\"location\":{\"name\":\"Earth (Replacement Dimension)\",\"url\":\"https://rickandmortyapi.com/api/location/20\"},\"image\":\"https://rickandmortyapi.com/api/character/avatar/1.jpeg\",\"episode\":[ \"https://rickandmortyapi.com/api/episode/1\",\"https://rickandmortyapi.com/api/episode/2\",\"https://rickandmortyapi.com/api/episode/3\",\"https://rickandmortyapi.com/api/episode/4\",\"https://rickandmortyapi.com/api/episode/5\",\"https://rickandmortyapi.com/api/episode/6\",\"https://rickandmortyapi.com/api/episode/7\",\"https://rickandmortyapi.com/api/episode/8\",\"https://rickandmortyapi.com/api/episode/9\",\"https://rickandmortyapi.com/api/episode/10\",\"https://rickandmortyapi.com/api/episode/11\",\"https://rickandmortyapi.com/api/episode/12\",\"https://rickandmortyapi.com/api/episode/13\"],\"url\":\"https://rickandmortyapi.com/api/character/1\",\"created\":\"2017-11-04T18:48:46.250Z\"}"
        
        let character = try JSONDecoder().decode(Character.self, from: json.data(using: .utf8)!)
        
        XCTAssertEqual(character.name, "Rick Sanchez")
        XCTAssertEqual(character.status, "Alive")
        XCTAssertEqual(character.species, "Human")
        XCTAssertEqual(character.type, "")
        XCTAssertEqual(character.gender, "Male")
        XCTAssertEqual(character.image, "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
        XCTAssertEqual(character.url, "https://rickandmortyapi.com/api/character/1")
        XCTAssertEqual(character.created, "2017-11-04T18:48:46.250Z")
        XCTAssertEqual(character.episode.count, 13)
        XCTAssertEqual(character.origin.name, "Earth (C-137)")
        XCTAssertEqual(character.origin.url, "https://rickandmortyapi.com/api/location/1")
        XCTAssertEqual(character.location.name, "Earth (Replacement Dimension)")
        XCTAssertEqual(character.location.url, "https://rickandmortyapi.com/api/location/20")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
