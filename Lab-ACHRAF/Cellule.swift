//
//  Cellule.swift
//  Lab-ACHRAF
//
//  Created by Tekup University 7 on 14/2/2023.
//
import UIKit

class Cellule : UITableViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var dscrip: UILabel!
    @IBOutlet var dirname: UILabel!
    @IBOutlet var prodname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
