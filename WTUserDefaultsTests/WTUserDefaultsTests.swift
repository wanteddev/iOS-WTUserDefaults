//
//  WTUserDefaultsTests.swift
//  WTUserDefaultsTests
//
//  Created by Ross on 2017. 7. 12..
//  Copyright © 2017년 wanted. All rights reserved.
//

import XCTest

class WTUserDefaultsTests: XCTestCase {
    var userDefaults:WTUserDefaultsHelper?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.userDefaults = WTUserDefaultsHelper()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSetAndGetBool() {
        guard let defaults = userDefaults else { return }
        let stringKey = "ABC"
        defaults.set(true, forKey: stringKey)
        var ret = defaults.getBool(forKey: stringKey)
        XCTAssert(ret)
        defaults.set(false, forKey: stringKey)
        ret = defaults.getBool(forKey: stringKey)
        XCTAssert(false == ret)
    }
    
    func testSetAndGetInteger() {
        guard let defaults = userDefaults else { return }
        let stringKey = "123"
        defaults.set(1, forKey: stringKey)
        var ret = defaults.getInteger(forKey: stringKey)
        XCTAssert(1 == ret)
        defaults.set(2, forKey: stringKey)
        ret = defaults.getInteger(forKey: stringKey)
        XCTAssert(2 == ret)
        defaults.set(3, forKey: stringKey)
        ret = defaults.getInteger(forKey: stringKey)
        XCTAssert(3 == ret)
    }
    
    func testSetAndGetObject() {
        guard let defaults = userDefaults else { return }
        let stringKey = "KeyString"
        defaults.set("ABC", forKey: stringKey)
        var ret = defaults.getObject(forKey: stringKey) as? String
        XCTAssert("ABC" == ret)
        defaults.set("CDE", forKey: stringKey)
        ret = defaults.getObject(forKey: stringKey) as? String
        XCTAssert("CDE" == ret)
        defaults.set("QWER", forKey: stringKey)
        ret = defaults.getObject(forKey: stringKey) as? String
        XCTAssert("QWER" == ret)
    }
    
    func testSetAndGetArray() {
        guard let defaults = userDefaults else { return }
        let stringKey = "ArrayTEST"
        var array = ["ABC"]
        defaults.set(array, forKey: stringKey)
        var ret = defaults.getArray(forKey: stringKey) as? [String]
        XCTAssert(1 == ret?.count)
        XCTAssert("ABC" == ret?[0])
        
        array = ["ABC", "CDE"]
        defaults.set(array, forKey: stringKey)
        ret = defaults.getArray(forKey: stringKey) as? [String]
        XCTAssert(2 == ret?.count)
        XCTAssert("CDE" == ret?[1])
        
        array = ["ABC", "CDE", "123"]
        defaults.set(array, forKey: stringKey)
        ret = defaults.getArray(forKey: stringKey) as? [String]
        XCTAssert(3 == ret?.count)
        XCTAssert("123" == ret?[2])
        
        array = ["ABC", "CDE", "123", "!@#"]
        defaults.set(array, forKey: stringKey)
        ret = defaults.getArray(forKey: stringKey) as? [String]
        XCTAssert(4 == ret?.count)
        XCTAssert("!@#" == ret?[3])
        
    }
    
}
