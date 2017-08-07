//
//  JSONHelperTests.swift
//  UnitTestDemo
//
//  Created by JordanLin on 2017/8/7.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import XCTest

@testable import UnitTestDemo

class JSONHelperTests: XCTestCase {
    
    var helper: JSONHelper?
    
    override func setUp() {
        
        super.setUp()
        
        helper = JSONHelper()
        
    }
    
    override func tearDown() {
        
        helper = nil
        
        super.tearDown()
        
    }
    
    func testLoadJSON() {
        
        let promise = self.expectation(description: "Load JSON file locally.")
        
        helper!.loadJSON(name: "Demo") { result in
            
            promise.fulfill()

            switch result {
                
            case .success(let json):
                
                let object = json as? [String:Any]
                
                XCTAssertNotNil(object)
                
                let message = object!["Hi"] as? String
                
                XCTAssertEqual(
                    message,
                    "Hello"
                )
                
            case .failure(let error):
                
                XCTFail("\(error)")
                
            }
            
        }
        
        self.wait(for: [promise], timeout: 10.0)
        
    }
    
}
