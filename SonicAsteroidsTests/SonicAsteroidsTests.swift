//
//  SonicAsteroidsTests.swift
//  SonicAsteroidsTests
//
//  Created by Jonathan Rothwell on 04/07/2016.
//  Copyright © 2016 Zuhlke UK. All rights reserved.
//

import XCTest
@testable import SonicAsteroids

class SonicAsteroidsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCenterPanIsZero() {
        XCTAssertEqual(0.0, SonicAsteroids.adjustPan(pan: 0.0))
    }

    func testFarLeftPanIsNegativeOne() {
        XCTAssertEqual(-1.0, SonicAsteroids.adjustPan(pan: -1.0))
    }

    func testFarRightPanIsPositiveOne() {
        XCTAssertEqual(1.0, SonicAsteroids.adjustPan(pan: 1.0))
    }

    func testOufOfRangePanIsIgnored() {
        XCTAssertEqual(0.0, SonicAsteroids.adjustPan(pan: -2.0))
        XCTAssertEqual(0.0, SonicAsteroids.adjustPan(pan: 14.0))
    }

    func testBathtubCurve() {
        XCTAssertLessThan(SonicAsteroids.adjustPan(pan: 0.5), 0.5)
        XCTAssertGreaterThan(SonicAsteroids.adjustPan(pan: -0.5), -0.5)
    }

    
//    func testPerformanceExample() {
//        self.measure {
//        }
//    }
    
}
