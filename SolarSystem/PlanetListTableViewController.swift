//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Chandi Abey  on 8/16/16.
//  Copyright © 2016 Chandi Abey . All rights reserved.
//

import UIKit


/*
 Solar System app- key tasks 
 (1) instantiate and place a UITableview on screen and work with tableviewcontrollers 
 (2) implement master-detail interface
 (3) implement datasource and delegate protocols to respond to user interactions 
 (4) insantiate and place UIImages on the screen
 (5) use model object controller to access model objects
 */



class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //we refer to the instance of the class Planet called PlanetController and pull out the array 
        return PlanetController.planets.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        // Configure the cell...
        //Set up your cells to display the name, image, and index of the planet
        //note: Look at the included properties and various styles of a UITableViewCell
        //note: Experiment with the content modes on the cell's UIImageView to display the image in different ways

        //choose class, then array, then item in array, and then the property
        cell.textLabel?.text = PlanetController.planets[indexPath.row].name
        
        //NOTE: Where did cell imageView come from? Research tableview cells.
        cell.imageView?.image = UIImage(named: PlanetController.planets[indexPath.row].imageName)
        //since indexPath is already defined, no need to call planetcontroller.planets[indexPath.row]
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        return cell
    }
  

   
    // MARK: - Navigation

    
    /*
     note: Look at UITableView documentation to find a way to capture the indexPath of the selected row
     note: Remember, the PlanetDetailViewController will use the planet property to update itself when it loads to display to the user
 
    */
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //check for correct segue identifier
        if segue.identifier == "toPlanetDetail" {
            //capture an instance of the viewcontroller
            let detailViewController = segue.destination as? PlanetDetailViewController
            //capture an instance of selected planet and set planet property of viewcontroller
            if let indexPath = tableView.indexPathForSelectedRow {
                detailViewController?.planet = PlanetController.planets[indexPath.row]
            }
        }
        
    }
 

}
