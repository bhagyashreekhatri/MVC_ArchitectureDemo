//
//  AnimalsTableTableViewController.swift
//  MVCArchitectureDemo
//
//  Created by Bhagyashree Haresh Khatri on 09/08/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import UIKit

class AnimalsTableTableViewController: UITableViewController {
    
    var animals = [ZooAnimal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animals = ZooAnimal.zooAnimals
    }
    
    //MARK: UITableView Delegate
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Animal Cell", for: indexPath)
        // Configure the cell...
        let animal = animals[indexPath.row]
        cell.textLabel?.text = animal.name
        cell.detailTextLabel?.text = animal.origin
        cell.imageView?.image = UIImage(named: String(animal.imageNumber))
        return cell
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AnimalDetailViewController {
            destination.animal = animals[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    
}
