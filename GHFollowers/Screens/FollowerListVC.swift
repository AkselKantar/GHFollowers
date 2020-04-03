//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Aksel Kantar on 30.03.2020.
//  Copyright © 2020 Aksel Kantar. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
                case .failure(let error):
                    self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
                
                case .success(let follower):
                    print(follower.count)
            }
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
