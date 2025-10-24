import XCTest
import SwiftTreeSitter
import TreeSitterDlp

final class TreeSitterDlpTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_dlp())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Dolphin grammar")
    }
}
