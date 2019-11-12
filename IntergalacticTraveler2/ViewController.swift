//
//  ViewController.swift
//  IntergalacticTraveler2
//
//  Created by Victor Delgado on 11/6/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let data = colorTextField.text, data != "blue" || data != "red" {
        let NVC = segue.destination as! SecondViewController
        NVC.starColor = data
        } else {
            let alert = UIAlertController (title: "Error", message: "There is no data.", preferredStyle: .alert)
            let button = UIAlertAction (title: "OK", style: .default, handler: nil)
            alert.addAction(button)
            present(alert, animated: true, completion: nil)
        }
    }

}

