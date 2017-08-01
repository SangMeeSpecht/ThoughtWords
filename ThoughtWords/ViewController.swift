//
//  ViewController.swift
//  ThoughtWords
//
//  Created by SangMee Specht on 7/26/17.
//  Copyright © 2017 SangMee Specht. All rights reserved.
//

import UIKit
import FirebaseDatabase
import ReactiveCocoa
import ReactiveSwift

class ViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ref = Database.database().reference(withPath: "dictionary")
        
        //        let word = Word(word: "word2", definition: "word2 definition")
        //
        //        // 3
        //        let dictionaryRef = ref.child("word2")
        //
        //        // 4
        //        dictionaryRef.setValue(word.toAnyObject())
        
        ref.observe(.value, with: { snapshot in
            for child in snapshot.children {
                let snap = child as! DataSnapshot
                let snapshotValue = snap.value as! [String: AnyObject]
                let name = snapshotValue["name"] as! String
                
                self.testLabel.reactive.text <~ MutableProperty(name)
                print(snapshot.value)
            }
        })
    }
}

class Word {
    let word: String
    let definition: String
    init(word: String, definition: String) {
        self.word = word
        self.definition = definition
    }
    
    func toAnyObject() -> Any {
        return [
            "word": word,
            "definition": definition
        ]
    }
}
