//
//  ViewController.swift
//  alertview and actionsheet
//
//  Created by monil sojitra on 17/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setloginButton()
    }


    @IBAction func loginButtonAction(_ sender: Any) {
        self.view.endEditing(true)
        if userNameTextfield.text == "" && passwordTextfield.text == ""{
            showalert(title: "Please Enter your User name & Password")
        }
        else if userNameTextfield.text == ""{
            showalert(title: "Please Enter your User Name")
        }
        else if passwordTextfield.text == ""{
            showalert(title: "Please Enter your Password")
        }
        navigate()
        
    }
    func showalert(title:String){
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style:.default ))
        alert.addAction(UIAlertAction.init(title: "Cancel", style:.destructive))
        present(alert, animated: true)
    }
    func navigate(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    func setloginButton(){
        loginButton.layer.cornerRadius = 15
        loginButton.layer.borderWidth = 3
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.masksToBounds = true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

