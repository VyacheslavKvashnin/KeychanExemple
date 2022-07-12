//
//  ViewController.swift
//  KeychanExemple
//
//  Created by Вячеслав Квашнин on 11.07.2022.
//

import UIKit
import Locksmith

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        let dictionary = Locksmith.loadDataForUserAccount(userAccount: "MyLogin")
        print(dictionary ?? "")
    }
    
    @IBAction func saveData() {
        if let login = loginTF.text, let pass = passTF.text {
            do {
                try Locksmith.saveData(data: ["login": login, "pass": pass], forUserAccount: "MyLogin")
            } catch {
                print("Unsafe")
            }
        }
    }
}

