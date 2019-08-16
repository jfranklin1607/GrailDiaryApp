//
//  LocationDetailViewController.swift
//  GrailDiary
//
//  Created by Joshua Franklin on 8/14/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class LocationDetailViewController: UIViewController {

    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var locationTextView: UITextView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

//Declare 3 IBOutlet properties: locationLabel, countryLabel, and cluesTextView using UILabel and UITextView for the types; wire them to their appropriate subviews in the storyboard
//Declare a variable property called poi of type POI
//Create a private method called updateViews that takes no arguments
//Call the above method inside viewDidLoad
//In updateViews, unwrap the poi property with guard and set the various model properties to the text of the labels and the textview; you'll have to do a little formatting to show the clues as a list in the cluesTextView
