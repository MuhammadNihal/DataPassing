//
//  SecondViewController.swift
//  DataPassing
//
//  Created by Nihal on 01/06/2024.
//

import UIKit

protocol UserData {
    func user() -> User?
}

class SecondViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    var delegate: UserData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUserData()
    }
    
    
    func setupUserData() {
        if let delegate = delegate {
            lblName.text = "Name: \(delegate.user()?.name ?? "")"
            lblEmail.text = "Email: \(delegate.user()?.email ?? "")"
        }
    }
    
}
