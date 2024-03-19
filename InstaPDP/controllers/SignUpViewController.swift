//
//  SignUpViewController.swift
//  InstaPDP
//
//  Created by Akbar Ibodulloyev on 19/03/24.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    //MARK: - Method
    
    
    
    //MARK: - Action
    
    @IBAction func onSignedIn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func onSignedUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
