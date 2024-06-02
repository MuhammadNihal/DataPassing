//
//  ViewController.swift
//  DataPassing
//
//  Created by Nihal on 01/06/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    private var name = ""
    private var email = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextAction(_ sender: UIButton) {
        guard let name = txtName.text , !name.isEmpty , let email = txtEmail.text, !email.isEmpty else {
            return
        }
        
        self.name = name
        self.email = email
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else { return }
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


extension ViewController: UserData {
    func user() -> User? {
        let user = User(name: self.name, email: self.email)
        return user
    }
}

struct User {
    let name: String
    let email: String
}
