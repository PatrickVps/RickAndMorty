//
//  MainViewControllerTests.swift
//  RickAndMortyUITests
//
//  Created by Patrick VONGPRASEUTH on 06/04/2021.
//

import XCTest
@testable import RickAndMorty

class MainViewControllerTests: XCTestCase {
     
    var app : XCUIApplication?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app?.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
         
    }

    override func tearDownWithError() throws {
        try! super.tearDownWithError()
    }
     

    func testTapEpisodes() throws {
        app?.tables.element(boundBy: 0).cells.element(boundBy: 0).tap()
    }
    
    func testTapCharacters() throws {
        app?.tables.element(boundBy: 0).cells.element(boundBy: 1).tap()
    }

}
