import XCTest
import DictionaryBuilder

final class DictionaryBuilderTests: XCTestCase {
    func testBuildBlockComponents() {
        let hasCrew = true
        let reuseCount = 69
        
        let launchStatus = Dictionary {
            ["Weather": true]
            ["Range": true]
            
            if hasCrew {
                ["Medic": true]
            }
            
            if #available(macOS 11.0, iOS 14.0, *) {
                ["Latest Software": true]
            }
            
            switch reuseCount {
            case 0:
                ["Unboxed": true]
            default:
                ["Repainted": true]
            }
        }
        
        XCTAssertTrue(launchStatus.count == 5)
        XCTAssertTrue(launchStatus["Weather"] == true)
        XCTAssertTrue(launchStatus["Range"] == true)
        XCTAssertTrue(launchStatus["Medic"] == true)
        XCTAssertTrue(launchStatus["Latest Software"] == true)
        XCTAssertTrue(launchStatus["Repainted"] == true)
    }
}
