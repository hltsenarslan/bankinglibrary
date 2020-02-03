import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(IbanHelperTests.allTests),
        testCase(EmailHelperTests.allTests)
    ]
}
#endif
