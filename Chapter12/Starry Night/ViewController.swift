//
//  ViewController.swift
//  Starry Night
//
//  Created by Steffen D. Sommer on 08/01/2017.
//  Copyright © 2017 Steffen D. Sommer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func dayTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor(red: 0.64, green: 0.83, blue: 0.93, alpha: 1)
        })
    }

    @IBAction func nightTapped(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0.20, alpha: 1)
        })
    }
}

