//
//  ViewController.swift
//  HelloWorld
//
//  Created by Alexey Romanko on 7/19/19.
//  Copyright © 2019 Romanko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func calculateSomething () -> Int {
        let a = 5 + 3;
        return a;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let b = self.calculateSomething()
        print(b)
    }


}

