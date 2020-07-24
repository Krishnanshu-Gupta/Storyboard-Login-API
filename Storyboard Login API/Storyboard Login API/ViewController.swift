//
//  ViewController.swift
//  Storyboard Login API
//
//  Created by krish on 7/7/20.
//  Copyright © 2020 krish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var navbar: UINavigationItem!
    @IBOutlet weak var _email: UITextField!
    @IBOutlet weak var _pass: UITextField!
    @IBOutlet weak var _loginButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        let email = _email.text
        let pass = _pass.text
        if(email == "krishnanshu@gmail.com" && pass == "password"){
            label.isHidden = true
            //let VC = self.storyboard?.instantiateTableViewController(withIdentifier: "PostsTableViewController") as! PostsTableViewController
            //self.present(VC, animated: true, completion: nil)
            //LoadingOverlay.shared.showOverlay(view: self.view)
            //self.show(VC, sender: self)
            self.performSegue(withIdentifier: "table", sender: nil)
            //LoadingOverlay.shared.hideOverlayView()
        }
        else {
            label.isHidden = false
        }
    }
}
