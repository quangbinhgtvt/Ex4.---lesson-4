//
//  MainViewController.swift
//  Ex4. - lesson 4
//
//  Created by BinhPQ on 10/10/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.borderColor = UIColor.gray.cgColor
        signInButton.layer.borderWidth = 1
        signInButton.layer.cornerRadius = 10
        signInButton.layer.backgroundColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickMainButton(_ sender: Any) {
        self.performSegue(withIdentifier: "SignInView", sender: self)
        
    }
    

}
