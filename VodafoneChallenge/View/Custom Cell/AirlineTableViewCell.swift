//
//  AirlineTableViewCell.swift
//  VodafoneChallenge
//
//  Created by Vodafone Mac on 28/09/2022.
//

import UIKit

class AirlineTableViewCell: UITableViewCell {

    @IBOutlet weak var airlineLogo: UIImageView!
    
    
    @IBOutlet weak var airlineName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
