//
//  ViewController.swift
//  GrailDiary
//
//  Created by Joshua Franklin on 8/13/19.
//  Copyright © 2019 AMSU. All rights reserved.
//

import UIKit

class CluesTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var locations: [Location] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        locations.append(Location(location: "New York", country: "United States", clues: ["subway"]))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddLocationModalSegue" {
            if let addLocationVC = segue.destination as? AddLocationViewController {
                addLocationVC.delegate = self
        }
      }
   }
}

extension CluesTableViewController: addLocationDelegate {
    func locationWasCreated(_ location: Location) {
        locations.append(location)
        dismiss(animated: true, completion: nil)
        tableView.reloadData()
    }
}


// Conform to the UITableViewDataSource
extension CluesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
     guard let cell =  tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath) as?
        LocationTableViewCell else {return UITableViewCell()}
        
        let location = locations[indexPath.row]
        cell.location = location
        
        return cell
    }
    
    
}
