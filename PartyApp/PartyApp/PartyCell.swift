//
//  PartyCell.swift
//  PartyApp
//
//  Created by Noi-Ariella Baht Israel on 4/12/17.
//  Copyright © 2017 Plant A Seed of Code. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
    }

}
