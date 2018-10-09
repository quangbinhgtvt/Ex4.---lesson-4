//
//  SignInViewController.swift
//  Ex4. - lesson 4
//
//  Created by BinhPQ on 10/9/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    //outlets
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var jobSeeker: UIButton!
    @IBOutlet weak var jobProvider: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        // Do any additional setup after loading the view.
        //set icon and bottom for username text field
        let imageUser = UIImage(named: "ic_user.png")
        userNameTextField.setIconImage(image: imageUser)
        userNameTextField.setBottomBorder()
        //set icon and bottom for email
        let imageEmail = UIImage(named: "ic_mail.png")
        emailTextField.setIconImage(image: imageEmail)
        emailTextField.setBottomBorder()
        //set icon, bottom for phone
        let imagePhone = UIImage(named: "Phone Icon.png")
        phoneTextField.setIconImage(image: imagePhone)
        phoneTextField.setBottomBorder()
        // set icon, bottom for pass
        let imagePassword = UIImage(named: "ic_lock.png")
        passwordTextField.setIconImage(image: imagePassword)
        passwordTextField.setBottomBorder()
        //set border for register button
        registerButton.layer.borderWidth = 1
        registerButton.layer.cornerRadius = 20
       
    }
    
    // func validation phone number format
    func validatePhone(value: String) -> Bool {
        let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    // func check email

    
    // ham thong bao
    func informForm (tit: String, msg: String) {
        let alert = UIAlertController(title: tit, message: msg, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (action : UIAlertAction) in
            print("ok")        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)    }
    //actions
    
    @IBAction func jobProviderButton(_ sender: Any) {
        jobProvider.isHighlighted = true
        jobProvider.layer.borderWidth = 1
        jobProvider.layer.cornerRadius = 10
        jobProvider.layer.borderColor = UIColor.green.cgColor
    }
    
    @IBAction func jobSeekerButton(_ sender: Any) {
        jobSeeker.isHighlighted = true
        jobSeeker.layer.borderWidth = 1
        jobSeeker.layer.cornerRadius = 10
        jobSeeker.layer.borderColor = UIColor.green.cgColor
        
        
    }
    
    @IBAction func clickSignUpButton(_ sender: Any) {
        //check username
        if (userNameTextField.text?.isEmpty)! {
            informForm(tit: "UserName", msg: "Ten nguoi dung khong duoc de trong")
        }
        
        //check email
        if !(emailTextField.text?.isEmpty)! {
            
          if (!(emailTextField.text?.contains("@"))!)
     
            {
                informForm(tit: "Email", msg: "Hay nhap dung dinh dang email abc@xyz.com")
            }
        } else
        {
            informForm(tit: "Empty Email", msg: "email khong duoc de trong")
        }
        
        //check phone number
        let phoneNumber = phoneTextField.text
        if (phoneNumber?.isEmpty)! {

            informForm(tit: "Empty Phone Number", msg: "So dien thoai khong duoc de trong")
        }
        else {
//        if ((phoneNumber?.count)! >= 9 && (phoneNumber?.count)! <= 11)
        
            if !validatePhone(value: phoneNumber!)
            {
                informForm(tit: "Phone Number Format", msg: "Hay nhap so dien thoai dung dinh dang")
            }
       
//        else
//        {
//
//           informForm(tit: "Phone Number", msg: "So dien thoai phai co 9, 10 hoac 11 so")
//
//        }
            
        }
        
        // check password
        if (passwordTextField.text!.count != 6 ){
            informForm(tit: "Password Length", msg: "Mat khau phai co 6 ky tu")
        }
        
    } //button Register
    
    
}

////// validation for sign up form
extension SignUpViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("did begin")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("did end")
    }


}
