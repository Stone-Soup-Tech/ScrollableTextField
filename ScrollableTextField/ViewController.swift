//
//  ViewController.swift
//  ScrollableTextField
//
//  Created by Yoyo on 7/1/20.
//  Copyright © 2020 Yoyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollableTextView: ScrollableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollableTextView.textField.placeholder = "hello, I'm Yoyo"
        scrollableTextView.textField.text = "long long long long long long long long long long long long long long long long long long long long long"
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureHandle(gesture:)))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func tapGestureHandle(gesture: UIGestureRecognizer) {
        scrollableTextView.textField.resignFirstResponder()
    }
    
}

