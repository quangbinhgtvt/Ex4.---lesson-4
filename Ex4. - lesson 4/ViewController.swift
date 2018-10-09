//
//  ViewController.swift
//  Ex4. - lesson 4
//
//  Created by BinhPQ on 10/8/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //outlets
    @IBOutlet weak var iconEmailTextField: UITextField!
    @IBOutlet weak var iconPasswordTextField: UITextField!
    @IBOutlet weak var borderButton: UIButton!
    @IBOutlet weak var borderSignUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set icon for email text field
        let imageEmail = UIImage(named: "ic_mail.png")
        iconEmailTextField.setIconImage(image: imageEmail)
        iconEmailTextField.setBottomBorder()
        
        //set icon for password text field
        let imagePass = UIImage(named: "ic_lock.png")
        iconPasswordTextField.setIconImage(image: imagePass)
        iconPasswordTextField.setBottomBorder()
        // set border for button
        borderButton.layer.borderWidth = 1
        borderButton.layer.cornerRadius = 10

    }
    
    // Actions
    @IBAction func clickSignIn(_ sender: Any) {
        // lay mainstoryboard
//       let sb = UIStoryboard(name: "Main", bundle: nil)
//        // tao man hinh tabbar
//        let myTabbar = sb.instantiateViewController(withIdentifier: "MainTabbar") as! MainTabbarController
//        //present(myTabbar, animated: true, completion: nil)
//        present(myTabbar, animated: true, completion: nil)
        self.performSegue(withIdentifier: "Tabbar", sender: self)
    }
    
   
    @IBAction func clickSignUp(_ sender: Any) {
//     // lay mainstoryboard
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        // tao man hinh Sign in
//        let mySignInView = sb.instantiateViewController(withIdentifier: "SignInView") as! SignInViewController
//        present(mySignInView,animated: true, completion: nil)
        self.performSegue(withIdentifier: "SignUpView", sender: self)
    }
    

}

extension UITextField {
    func setIconImage (image: UIImage?){
        
        //let define icon view
        let imageView = UIImageView()
        imageView.image = image
   
        let ysize = self.frame.height
        //set frame for icon image before add subview
        imageView.frame = CGRect(x: 5, y: (ysize - 30)/2, width: 20, height: 20)
        self.leftViewMode = UITextField.ViewMode.always
        self.addSubview(imageView)
        
        //set padding
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: self.frame.height))
        self.leftView = paddingView
        
    }
    // set bottom border
    func setBottomBorder() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
}
