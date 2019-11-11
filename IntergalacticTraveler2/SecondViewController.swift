//
//  SecondViewController.swift
//  IntergalacticTraveler2
//
//  Created by Victor Delgado on 11/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var startImageView: UIImageView!
    var starColor: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNumber = Int.random(in: 1...3)
        let myImage = UIImage(named: "\(starColor)\(randomNumber)")
        
        startImageView.image = myImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
