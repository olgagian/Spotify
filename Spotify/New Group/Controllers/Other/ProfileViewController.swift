//
//  ProfileViewController.swift
//  Spotify
//
//  Created by ioannis giannakidis on 17/2/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Profile"
        fetchProfile()
        view.backgroundColor = .systemBackground
        
    }
    private func fetchProfile() {
        APICaller.shared.getCurrentUserProfile { [weak self] result in
            DispatchQueue.main.async {
                
                
//                switch result {
//                case .success(let model):
//                    self?.updateUI(with:model)
//                case .failure(let error):
                    self?.failedToGetProfile()
//
//                }
            }
        }
    }
    private func updateUI(with model: UserProfile) {
        
    }
    private func failedToGetProfile(){
        let label = UILabel(frame: .zero)
        label.text = "Failed to load profile."
        label.sizeToFit()
        label.textColor = .secondaryLabel
        view.addSubview(label)
        label.center = view.center
    }
}





