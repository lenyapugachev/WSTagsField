//
//  ViewController.swift
//  WSTagsFieldExample
//
//  Created by Ricardo Pereira on 04/07/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import UIKit
import WSTagsField

class ViewController: UIViewController {
    fileprivate let tagsField = WSTagsField()
    @IBOutlet fileprivate weak var tagsView: UIView!
    @IBOutlet weak var height: NSLayoutConstraint!
    
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tagsField.frame = tagsView.bounds
        tagsView.addSubview(tagsField)

        tagsField.backgroundColor = UIColor(white: 244/255, alpha: 1)
        tagsField.padding = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        tagsField.placeholder = "Search..."
        tagsField.tintColor = UIColor.blue
        tagsField.tagColor = UIColor.white
        tagsField.textColor = UIColor.blue
        tagsField.selectedColor = UIColor.blue
        tagsField.selectedTextColor = UIColor.white
        tagsField.frame = tagsView.bounds
        tagsField.font = UIFont.systemFont(ofSize: 16, weight: UIFontWeightMedium)
        tagsField.returnKeyType = .search
        tagsField.delimiter = " "

        tagsField.placeholderAlwayVisible = true

        height.constant = tagsField.frame.height
            
        textFieldEventss()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tagsField.beginEditing()
    }

    override func viewWillLayoutSubviews() {
        tagsField.frame = tagsView.bounds
    }

    @IBAction func touchTest(_ sender: UIButton) {
        i += 1
        tagsField.addTag("test\(i)", image: UIImage(named: "2419256")!)
    }
}

extension ViewController {
    fileprivate func textFieldEventss() {
        tagsField.onDidAddTag = { _ in
            
        }

        tagsField.onDidRemoveTag = { _ in
            
        }

        tagsField.onDidChangeText = { _, text in
            //print("onDidChangeText")
        }

        tagsField.onDidBeginEditing = { _ in
            print("DidBeginEditing")
        }

        tagsField.onDidEndEditing = { _ in
            print("DidEndEditing")
        }

        tagsField.onDidChangeHeightTo = { _, height in
            self.height.constant = height + 39
        }
        
        tagsField.onVerifyTag = { _, tagView in
            return false
        }
    }
}
