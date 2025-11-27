//
//  SRRequestTests.swift
//  SRNetworkKit
//
//  Created by Test on 2025/11/25.
//

import XCTest
@testable import SRNetworkKit
import SRLogKit
class SRRequestTests: XCTestCase {
    
    var sut: SRRequest!
    
    override func setUp() {
        super.setUp()
        sut = SRRequest()
        SRLogKit.setup()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testDemo() {
//        XCTAssertTrue(true)
        var message = SRChatMessage()
        message.msgId = 12345678
        message.timestamp = 1732515632
        message.msgType = .Chat
        message.msgStatus = .SendSuccess
        message.ownId = 11111111
        message.fromId = 11111111
        message.toId = 22222222
        message.fromEntity = .User
        message.toEntity = .User
        message.msgContent = "a message 123 中文是否可以。，阿斯分红"
        let data = message.messageToData()
        let readMessage
        = SRChatMessage.dataToMessage(data: data)
        if message != readMessage {
            SRChatMessage.printDifferences(message, readMessage)
        }
        XCTAssertTrue(message == readMessage)
    }
    
    // MARK: - Tests
    
    // func testSRRequestInitialization() {
    //     XCTAssertNotNil(sut, "SRRequest should be initialized")
    // }
    
    // func testRequestPostMethod() {
    //     let expectation = XCTestExpectation(description: "POST request should complete")
    //     var receivedResponse: String?
    //     var receivedError: Error?
        
    //     sut.requestPost(apiName: "/test", params: ["key": "value"]) { response in
    //         receivedResponse = response
    //         expectation.fulfill()
    //     } failure: { error in
    //         receivedError = error
    //         expectation.fulfill()
    //     }
        
    //     wait(for: [expectation], timeout: 5.0)
        
    //     // Verify that either response or error is received
    //     XCTAssert(receivedResponse != nil || receivedError != nil, 
    //               "Should receive either response or error")
    // }
    
    // func testRequestMethod() {
    //     let expectation = XCTestExpectation(description: "GET request should complete")
    //     var receivedResponse: String?
        
    //     sut.request(apiName: "/test", method: .get) { response in
    //         receivedResponse = response
    //         expectation.fulfill()
    //     } failure: { _ in
    //         expectation.fulfill()
    //     }
        
    //     wait(for: [expectation], timeout: 5.0)
        
    //     // Verify request was made
    //     XCTAssertNotNil(sut, "SRRequest should still be valid")
    // }
}
