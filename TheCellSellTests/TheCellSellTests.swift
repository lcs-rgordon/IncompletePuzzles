import XCTest

class TheCellSellTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // Typical case 
    // • Daytime minutes more than free threshold for both plans
    // • Plan A is cheapest
    // • All output text exactly as shown
    // • Amounts exactly as shown 
    func testTypicalCaseA() {
        
        XCTAssertEqual("""
            Plan A costs 8175
            Plan B costs 8575
            Plan A is cheapest.
            """,
                       CellSell.compareCosts(day: 300,
                                             evening: 145,
                                             weekend: 50))
        
    }

    // Typical case 
    // • Daytime minutes more than free threshold for both plans
    // • Plan B is cheapest 
    func testTypicalCaseB() {
        
        XCTAssertEqual("""
            Plan A costs 5600
            Plan B costs 3940
            Plan B is cheapest.
            """,
                       CellSell.compareCosts(day: 262,
                                             evening: 90,
                                             weekend: 10))
        
    }

    
}
