//
//  ViewController.swift
//  TeamWork3
//
//  Created by Apple on 19/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NameUI: UITextField!
    @IBOutlet weak var PasswoodUI: UITextField!
    @IBOutlet weak var LoginUI: UIButton!
    @IBOutlet weak var ResignsterUI: UIButton!
    @IBOutlet weak var DescriptionUI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameUI.placeholder = "Họ và tên"
        NameUI.borderStyle = .roundedRect
        NameUI.keyboardType = .namePhonePad
        PasswoodUI.placeholder = "Mật khẩu"
        PasswoodUI.borderStyle = .roundedRect
        PasswoodUI.keyboardType = .namePhonePad
        PasswoodUI.isSecureTextEntry = true
        LoginUI.backgroundColor = UIColor(red: 0.00, green: 0.45, blue: 0.38, alpha: 1.00)
        LoginUI.layer.cornerRadius = 10
        
        
    }
    @IBAction func LoginPress(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(identifier: "SecondViewController") as SecondViewController
        self.present(secondVC, animated: true, completion: nil)
    }
    @IBAction func ResignsterPress(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = storyboard.instantiateViewController(identifier: "ThirdViewController") as ThirdViewController
        self.present(thirdVC, animated: true, completion: nil)
    }
    

}

