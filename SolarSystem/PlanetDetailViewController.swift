//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Chandi Abey  on 8/16/16.
//  Copyright © 2016 Chandi Abey . All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    //optional because then the Master can reference this property and also if we didnt we'd have to initialize this as some value since this is a class
    var planet: Planet?
    
    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    
    @IBOutlet weak var dayLengthLabel: UILabel!
    
    
    @IBOutlet weak var diameterLabel: UILabel!
    
    override func viewDidLoad() {
    
   /*
         Add a new function called updateWithPlanet that takes a planet as a parameter and updates the view controller's title, UIImageView and UILabels with the planet's data
         note: This is an extremely common design pattern. Commit it to memory. If you have a detail view or table view cell template that displays data, use an 'updateWith' method that accepts the model data and updates the view elements with the correct data.
 */
        func updateWithPlanet(_ PlanetController: Planet) {
            //NOTE: Do we need to cast as a UIImage or String?
            planetImage.image = UIImage(named: PlanetController.imageName)
            distanceLabel.text = String(PlanetController.millionKMsFromSun)
            dayLengthLabel.text = String(PlanetController.dayLength)
            diameterLabel.text = String(PlanetController.diameter)
            
        }
        
        
        
        super.viewDidLoad()

        // NOTE:    Update the viewDidLoad() function to check the planet property, and call updateWithPlanet with the unwrapped value.
        //note: This is another extremely common design pattern. When loading a new view controller, check for a model object, and update the view with the values from that model object.
        if let planet = planet {
            updateWithPlanet(planet)
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
