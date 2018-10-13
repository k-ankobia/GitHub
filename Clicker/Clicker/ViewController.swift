//
//  ViewController.swift
//  Clicker
//
//  Created by KWAIKS on 11/10/2018.
//  Copyright © 2018 KWAIKS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0 {
        willSet {
            plus.isEnabled = newValue != 10
            minus.isEnabled = newValue != 0
            counterLabel.text = String(describing: newValue)
           // redScreen(newValue == 10 || newValue == 0)
            setColoroFor(value: newValue)
        }
    }
    
    @IBOutlet var counterLabel: UILabel!
    
    @IBOutlet var plus: UIButton!
    @IBOutlet var minus: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender == plus {
            counter += 1
        } else {
            counter -= 1
        }
    }
    
    func setColoroFor(value: Int)  {
        switch value {
        case 0..<5:
            view.backgroundColor = UIColor.cyan
        case 5...10:
            view.backgroundColor = UIColor.darkGray
        default:
            break
        }
    }
    
    func redScreen(_ enable: Bool) {
        if enable {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
    }

}

