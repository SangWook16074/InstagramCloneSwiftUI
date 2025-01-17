//
//  AppViewUITest.swift
//  InstagramCloneUITests
//
//  Created by 한상욱 on 1/16/25.
//

import XCTest

final class AppViewUITest: XCTestCase {
    
    var app : XCUIApplication!

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
        print(app.debugDescription)

    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        app = nil
    }
    
    
    func test_AppView의_초기화면은_FeedView_이다() throws {
        let result = app.staticTexts["Feed View"]
        XCTAssertTrue(result.exists, "초기 화면이 잘 나타나지 않습니다.!")
    }
    
    func test_AppView는_feed_search_upload_active_mypage로_이루어져있다() throws {
        let feedTap = app.buttons["FeedOnTap"]
        XCTAssertTrue(feedTap.exists, "feedTap을 찾을 수 없습니다.")
        let searchTap = app.buttons["SearchOffTap"]
        XCTAssertTrue(searchTap.exists, "searchTap을 찾을 수 없습니다.")
        let uploadTap = app.buttons["UploadTap"]
        XCTAssertTrue(uploadTap.exists, "uploadTap을 찾을 수 없습니다.")
        let activeTap = app.buttons["ActiveOffTap"]
        XCTAssertTrue(activeTap.exists, "activeTap을 찾을 수 없습니다.")
        let mypageTap = app.buttons["MyPageOffTap"]
        XCTAssertTrue(mypageTap.exists, "mypageTap을 찾을 수 없습니다.")
    }
    
    func test_사용자는_탭을_클릭하여_다른_뷰로_이동이가능하다() throws {
        let initView = app.staticTexts["Feed View"]
        let feedTap = app.buttons["FeedOnTap"]
        let searchTap = app.buttons["SearchOffTap"]
        // 초기에는 FEED VIEW가 보임.
        XCTAssertTrue(initView.exists, "초기화면이 FeedView가 아닙니다.")
        XCTAssertTrue(feedTap.exists, "feedTap이 활성화되지 않았습니다.")
        
        searchTap.tap()
        let nextView = app.staticTexts["Search View"]
        let nextFeedTap = app.buttons["FeedOffTap"]
        let nextSearchTap = app.buttons["SearchOnTap"]
        XCTAssertTrue(nextView.exists, "다음 뷰가 등장하지 않았습니다.")
        XCTAssertTrue(nextFeedTap.exists, "feedTap이 비활성화 되지 않았습니다.")
        XCTAssertTrue(nextSearchTap.exists, "searchTap이 활성화되지 않았습니다.")
        
        
    }

}
