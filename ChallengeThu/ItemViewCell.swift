//
//  ItemViewCell.swift
//  ChallengeThu
//
//  Created by Riccardo Barba on 22/02/17.
//  Copyright © 2017 Riccardo Barba. All rights reserved.
//

import UIKit

class ItemViewCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelDescription: UILabel!
    @IBOutlet var labelQta: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
