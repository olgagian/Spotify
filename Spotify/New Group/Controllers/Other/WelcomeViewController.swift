//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by ioannis giannakidis on 17/2/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    private let SignInButton: UIButton = {
        let button  = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In with Spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
     
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        
        view.backgroundColor = .systemGreen
        view.addSubview(SignInButton)
        SignInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        SignInButton.frame = CGRect(x: 20,
                                    y: view.height-50-view.safeAreaInsets.bottom,
                                    width: view.width-40,
                                    height: 50)
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = {[weak self]
            success in
            DispatchQueue.main.async {
                self?.handleSignIn(success:success)
            }
            
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    private func handleSignIn(success:Bool) {
        //login use in or well at them for error
    }
    
}
