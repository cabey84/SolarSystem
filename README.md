# SolarSystem
Master Detail view listing the planets and description in a detail view

Takeaways:
- Extremely common design pattern. Commit it to memory. If you have a detail view or table view cell template that displays data, use an "updateWith" method that accepts the model data and updates the view elements with the correct data. See updateWithPlanet function.
- Another extremely common design pattern. When loading a new view controller, check for a model object and update the view with the values from that model object. See code "if let planet = planet..." 
  

