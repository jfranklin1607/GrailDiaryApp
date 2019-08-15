//
//  AddLocationViewController.swift
//  GrailDiary
//
//  Created by Joshua Franklin on 8/14/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

protocol addLocationDelegate {
    func locationWasCreated( _ location: Location)
}

class AddLocationViewController: UIViewController {
    
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var clue1TextField: UITextField!
    @IBOutlet weak var clue2TextField: UITextField!
    @IBOutlet weak var clue3TextField: UITextField!
    
    var delegate: addLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        
        guard let location = locationTextField.text,
         let country = countryTextField.text,
        !location.isEmpty,
        !country.isEmpty else {return}
        
        var locations = Location(location: location, country: country, clues: [])
        
        if let clue1 = clue1TextField.text, !clue1.isEmpty {
            locations.clues.append(clue1)
        }
        
        if let clue2 = clue2TextField.text, !clue2.isEmpty {
            locations.clues.append(clue2)
        }
        
        if let clue3 = clue3TextField.text, !clue3.isEmpty {
            locations.clues.append(clue3)
        }
        
        delegate?.locationWasCreated(locations)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
