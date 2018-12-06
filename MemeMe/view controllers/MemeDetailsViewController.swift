//
//  MemeDetailsViewController.swift
//  MemeMe
//
//  Created by Hussain Almajed on 12/5/18.
//  Copyright © 2018 UdacityHS. All rights reserved.
//

import UIKit

class MemeDetailsViewController: UIViewController {

    @IBOutlet weak var imageDetails: UIImageView!
    var meme: Meme!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        imageDetails.image = meme.memedImage
        self.tabBarController?.tabBar.isHidden = true
        
    }
    

    

}
