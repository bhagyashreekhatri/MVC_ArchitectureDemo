//
//  AnimalsTableTableViewController.swift
//  MVCArchitectureDemo
//
//  Created by Bhagyashree Haresh Khatri on 09/08/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalDescriptionLabel: UITextView!
    
    var animal: ZooAnimal? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let animal = animal else {
            return
        }
        animalImageView.image = UIImage(named: animal.imageNumber.description)
        animalNameLabel.text = animal.name
        animalDescriptionLabel.text = animal.info
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
