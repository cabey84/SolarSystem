# SolarSystem
Master detail table view using the UITableViewDataSource and UITableViewDelegate protocols to build a Solar System directory, with a list view of the planets and a detail view that displays the image, distance, day length and diameter of the planet.  


Takeaways:
- Use UIStackviews in the detail view 
- Extremely common design pattern. Commit it to memory. If you have a detail view or table view cell template that displays data, use an "updateWith" method that accepts the model data and updates the view elements with the correct data. See updateWithPlanet function.
- Another extremely common design pattern. When loading a new view controller, check for a model object and update the view with the values from that model object. Add an optional property that will be set in the Master List view when performing the segue and the detail view will use this same property to update itself when it loads. See code "if let planet = planet..." 
