//
//  DummyTest.swift
//  ThoughtWords
//
//  Created by SangMee Specht on 7/26/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import Quick
import Nimble
import FirebaseDatabase
@testable import ThoughtWords

class DummyTest: QuickSpec {
    override func spec() {
        it("adds two numbers") {
            expect(1+1).to(equal(2))
        }
        
//        it("fetches test data from Firebase") {
//            let ref = Database.database().reference(withPath: "dictionary")
//            var name: String?
//            ref.observe(.value, with: { snapshot in
//                for child in snapshot.children {
//                    let snap = child as! DataSnapshot
//                    let snapshotValue = snap.value as! [String: AnyObject]
//                    name = snapshotValue["name"] as! String
//                }
//            })
//            expect(name).toEventually(equal("fail"))
//        }
    }
}
