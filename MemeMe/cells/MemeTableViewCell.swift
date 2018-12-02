//
//  MemeTableViewCell.swift
//  MemeMe
//
//  Created by Hussain Almajed on 12/1/18.
//  Copyright © 2018 UdacityHS. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {

    
   
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
