//
//  DummyTest.swift
//  ThoughtWords
//
//  Created by SangMee Specht on 7/26/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Quick
import Nimble
@testable import ThoughtWords

class DummyTest: QuickSpec {
    override func spec() {
        it("adds two numbers") {
            expect(1+1).to(equal(3))
        }
    }
}
