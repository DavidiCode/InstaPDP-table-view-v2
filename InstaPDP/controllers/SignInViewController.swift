//
//  SignInViewController.swift
//  InstaPDP
//
//  Created by Akbar Ibodulloyev on 19/03/24.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK: - Method
    
    func callSignUpViewController() {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true)
    }
    
    //MARK: - Action
    
    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callHomeController()
    }
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignUpViewController()
    }
    
}
