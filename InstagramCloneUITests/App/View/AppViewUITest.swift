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
        let firstView = app.staticTexts["Feed View"]
        XCTAssertTrue(firstView.exists, "초기 화면이 잘 나타나지 않습니다.!")
    }
    
    func test_AppView는_feed_search_upload_active_mypage로_이루어져있다() throws {
        let feedTab = app.images["feedOnTab"]
        XCTAssertTrue(feedTab.exists, "feedTap을 찾을 수 없습니다.")
        let searchTab = app.images["searchOffTab"]
        XCTAssertTrue(searchTab.exists, "searchTap을 찾을 수 없습니다.")
        let uploadTab = app.images["uploadTab"]
        XCTAssertTrue(uploadTab.exists, "uploadTap을 찾을 수 없습니다.")
        let activeTab = app.images["activeOffTab"]
        XCTAssertTrue(activeTab.exists, "activeTap을 찾을 수 없습니다.")
        let mypageTab = app.images["mypageOffTab"]
        XCTAssertTrue(mypageTab.exists, "mypageTap을 찾을 수 없습니다.")
    }
    
    func test_사용자는_탭을_클릭하여_다른_뷰로_이동이가능하다() throws {
        let initView = app.staticTexts["Feed View"]
        let feedTab = app.images["feedOnTab"]
        let searchTab = app.images["searchOffTab"]
        // 초기에는 FEED VIEW가 보임.
        XCTAssertTrue(initView.exists, "초기화면이 FeedView가 아닙니다.")
        XCTAssertTrue(feedTab.exists, "feedTab이 활성화되지 않았습니다.")
        
        searchTab.tap()
        let nextView = app.staticTexts["Search View"]
        let nextFeedTab = app.images["feedOffTab"]
        let nextSearchTab = app.images["searchOnTab"]
        XCTAssertTrue(nextView.exists, "다음 뷰가 등장하지 않았습니다.")
        XCTAssertTrue(nextFeedTab.exists, "feedTap이 비활성화 되지 않았습니다.")
        XCTAssertTrue(nextSearchTab.exists, "searchTap이 활성화되지 않았습니다.")
        
        
    }

}
