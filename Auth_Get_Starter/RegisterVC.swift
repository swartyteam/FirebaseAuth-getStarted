//
//  ViewController.swift
//  FirebaseAuth
//
//  Created by Kirill Verhoturov on 05/01/2019.
//  Copyright © 2019 Kirill Verhoturov. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterVC: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func createAccount(_ sender: Any) {
        
        if (emailField.text?.isEmpty)! || (passField.text?.isEmpty)!{
            let alert = UIAlertController(title: "Ошибка", message: "Заполните все поля", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Закрыть", style: UIAlertAction.Style.cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: emailField.text!, password: passField.text!) { (commplite, err) in
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "main")
                self.present(viewController, animated: false, completion: nil)
            }
        }

    }
    
}

