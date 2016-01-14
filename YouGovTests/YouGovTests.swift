//
//  YouGovTests.swift
//  YouGovTests
//
//  Created by Przemyslaw Probola on 1/12/16.
//  Copyright © 2016 YouGov. All rights reserved.
//

import XCTest
@testable import YouGov

class FeedDataSourceMock: FeedDataSourceProtocol {
    
    var dataModels = [String]()
}

class YouGovTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // given
        
        // when
        XCTAssertNotNil(viewController.dataSource, "Datasource is set")
        
        // then
        
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
