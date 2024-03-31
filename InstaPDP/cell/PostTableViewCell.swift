//
//  PostTableViewCell.swift
//  InstaPDP
//
//  Created by Akbar Ibodulloyev on 31/03/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var userImageView: UIImageView!
    
    @IBOutlet var userFullNameLabel: UILabel!
    
    @IBOutlet var postImageView1: UIImageView!
    
    @IBOutlet var postImageView2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
 
