//
//  MainViewControllerTests.swift
//  RickAndMortyTests
//
//  Created by Patrick VONGPRASEUTH on 06/04/2021.
//

import XCTest
@testable import RickAndMorty

class MainViewControllerTests: XCTestCase {

    let presenter = MainPresenterMock()
    
    func makeSUT() -> MainViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        sut.presenter = presenter
        sut.loadViewIfNeeded()
        return sut
    }
    
    override func setUpWithError() throws {
        try! super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try! super.tearDownWithError()
    }

    func testViewDidLoadCallsPresenter() {
        let sut = makeSUT()
        
        sut.displaySection(index: 0)
        
        XCTAssertTrue(presenter.onGotoSection)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class MainPresenterMock: MainPresenterInterface {
    
    private(set) var onViewLoadedCalled = false
    private(set) var onGotoSection = false
    
    func gotoSection(index: Int) {
        onGotoSection = true
    } 
}
