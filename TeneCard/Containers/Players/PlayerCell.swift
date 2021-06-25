//
//  PlayerCell.swift
//  TeneCard
//
//  Created by Teneocto on 25/06/2021.
//

import UIKit

class PlayerCell: UITableViewCell {

    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var deleteImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var cell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.playerName.tintColor = UIColor.white
        self.selectionStyle = .none
        cell.layer.cornerRadius = cell.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
