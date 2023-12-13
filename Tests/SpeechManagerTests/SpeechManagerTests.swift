import XCTest
@testable import SpeechManager

final class SpeechManagerTests: XCTestCase {
    func testSpeechManager() throws {
        let manager:SpeechManager? = SpeechManager()
        XCTAssert(manager != nil)
    }
}
