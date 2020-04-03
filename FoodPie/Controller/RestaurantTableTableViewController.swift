//
//  RestaurantTableTableViewController.swift
//  FoodPie
//
//  Created by ciggo on 3/31/20.
//  Copyright © 2020 ciggo. All rights reserved.
//

import UIKit

class RestaurantTableTableViewController: UITableViewController {

    var restaurants: [Restaurant] = [
        Restaurant(name: "Cafe Deadend", location: "Hong Kong", type: "Coffee & Tea Shop", image: "Cafe Deadend"),
        Restaurant(name: "Homei", location: "Hong Kong", type: "Cafe", image: "Cafe Deadend"),
        Restaurant(name: "Teakha", location: "Hong Kong", type: "Tea House", image: "Teakha"),
        Restaurant(name: "Cafe Loisl", location: "Hong Kong", type: "Austrian / Causual Drink", image: "Cafe Loisl"),
        Restaurant(name: "Petite Oyster", location: "Hong Kong", type: "French", image: "Petite Oyster"),
        Restaurant(name: "Cafe Deadend", location: "Hong Kong", type: "Coffee & Tea Shop", image: "Cafe Deadend"),
        Restaurant(name: "For Kee Restaurant", location: "Hong Kong", type: "Bakery", image: "For Kee Restaurant"),
        Restaurant(name: "Po's Atelier", location: "Hong Kong", type: "Bakery", image: "Po's Atelier"),
        Restaurant(name: "Bourke Street Bakery", location: "Hong Kong", type: "Chocolate", image: "Bourke Street Bakery"),
        Restaurant(name: "Haigh's Chocolater", location: "Sydney", type: "Cafe", image: "Haigh's Chocolate"),
        Restaurant(name: "Palomino Espresso", location: "Sydney", type: "Cafe", image: "Palomino Espresso"),
        Restaurant(name: "Haigh's Chocolater", location: "Sydney", type: "Cafe", image: "Haigh's Chocolate"),
        Restaurant(name: "Haigh's Chocolater", location: "Sydney", type: "American / Seafood", image: "Haigh's Chocolate"),
        Restaurant(name: "Upstate", location: "Sydney", type: "American", image: "Upstate"),
        Restaurant(name: "Traif", location: "New York", type: "American", image: "Traif"),
        Restaurant(name: "Graham Avenue Meats And Deli", location: "New York", type: "Breakfast & Brunch", image: "Graham Avenue Meats And Deli"),
        Restaurant(name: "Waffle & Wolf", location: "New York", type: "Breakfast & Brunch", image: "Waffle & Wolf"),
        Restaurant(name: "Graham Avenue Meats And Deli", location: "New York", type: "Coffee & Tea", image: "Graham Avenue Meats And Deli"),
        Restaurant(name: "Five Leaves", location: "New York", type: "Coffee & Tea", image: "Five Leaves"),
        Restaurant(name: "Cafe Lore", location: "New York", type: "Latin American", image: "Cafe Lore"),
        Restaurant(name: "Confessional", location: "New York", type: "Spanish", image: "Confessional"),
        Restaurant(name: "Barrafina", location: "London", type: "Spanish", image: "Barrafina"),
        Restaurant(name: "Donostia", location: "London", type: "Spanish", image: "Donostia"),
        Restaurant(name: "Royal Oak", location: "London", type: "British", image: "Royal Oak"),
        Restaurant(name: "CASK Pub and Kitchen", location: "London", type: "Thai", image: "CASK Pub and Kitchen"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = true
        navigationController?.navigationBar.prefersLargeTitles = true

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell

//        cell.textLabel?.text = restaurantNames[indexPath.row]
//        let imageNamed = restaurantImages[indexPath.row]
//        print("imageNamed: \(imageNamed)")
//        cell.imageView?.image = UIImage(named: imageNamed)

        cell.nameLabel.text = restaurants[indexPath.row].name
//        cell.thumbnailImageView.layer.cornerRadius = 30.0
        cell.thumbnailImageView.image = UIImage(named: restaurants[indexPath.row].image)
        cell.locationLabel.text = restaurants[indexPath.row].location
        cell.typeLabel.text = restaurants[indexPath.row].type

        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationViewController = segue.destination as! RestaurantDetailViewController
                destinationViewController.restaurant = self.restaurants[indexPath.row]
            }
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
