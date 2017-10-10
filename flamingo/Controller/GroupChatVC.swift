//
//  GroupChatVC.swift
//  flamingo
//
//  Created by Jaxson Mann on 8/9/17.
//  Copyright © 2017 Jaxson Mann. All rights reserved.
//

import UIKit

class GroupChatVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }

    

}
