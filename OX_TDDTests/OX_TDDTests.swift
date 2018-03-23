//
//  OX_TDDTests.swift
//  OX_TDDTests
//
//  Created by Kamil Kolendo on 23/03/2018.
//  Copyright © 2018 Kamil Kolendo. All rights reserved.
//

import XCTest
@testable import OX_TDD
//@testable import x

class OX_TDDTests: XCTestCase {
    
    enum State {
        case empty
        case x
        case o
    }
    
    struct Field {
        var state: State
        let position: (x: Int, y: Int)
    }
    
    func playerAction(onField field: Field) -> Bool {
        var isActionPossible: Bool
        
        if field.state != .empty {
            isActionPossible = false
        } else {
            isActionPossible = true
        }
        return isActionPossible
    }
    
    //-----------------------------------------
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPlayerShouldOccupyOnlyEmptyField() {
        
        let emptyField = Field(state: State.empty, position: (0, 0))
        let occupiedField = Field(state: State.x, position: (0, 0))
        
        XCTAssertEqual(playerAction(onField: emptyField), true)
        XCTAssertEqual(playerAction(onField: occupiedField), false)
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
