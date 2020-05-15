//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Aksel Kantar on 15.05.2020.
//  Copyright © 2020 Aksel Kantar. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemPurple, title: "Get Followers")
    }
}
