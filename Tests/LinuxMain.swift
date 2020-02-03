import XCTest

import BankingLibraryTests

var tests = [XCTestCaseEntry]()
tests += IbanHelperTests.allTests()
XCTMain(tests)
