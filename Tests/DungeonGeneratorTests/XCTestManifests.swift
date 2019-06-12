import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DungeonGeneratorTests.allTests),
        testCase(ChamberFactoryTests.allTests),
    ]
}
#endif
