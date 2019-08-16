//
//  LocationTableViewCell.swift
//  GrailDiary
//
//  Created by Joshua Franklin on 8/14/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var clueCountLabel: UILabel!
    
    var location: Location? {
        
        // didSet is a property observer, it will be called
        // every time location is set
        didSet {
            updateView()
        }
    }
    
    
    
   private func updateView() {
    
    guard let location = location else {return}
    
    countryLabel.text = location.country
    locationLabel.text = location.location
    clueCountLabel.text = "\(location.clues.count) clues"
    
    }

}
