//
//  SecondViewController.swift
//  ToDoList-BenLandau
//
//  Created by Benjamin Landau on 11/15/16.
//  Copyright © 2016 Benjamin Landau. All rights reserved.
//

import UIKit

class ListOfItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listOfItemsTableViewOutlet: UITableView!
    
    @IBOutlet weak var newItemtextFieldOutlet: UITextField!
    
    var list: List!
    
    @IBAction func addTo(_ sender: Any) {
        if newItemtextFieldOutlet.text == "" { return }
        let input = newItemtextFieldOutlet.text
        let newItem = Item(title: input! , description: "")
        list.items.append(newItem)
        listOfItemsTableViewOutlet.reloadData()
          newItemtextFieldOutlet.text = nil
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.items.count
        
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListOfItemsTableViewCell", for: indexPath) as! ListOfItemsTableViewCell
        cell.textLabel?.text = list.items[indexPath.row].title
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ItemDetailViewController = segue.destination as! ItemDetailViewController
        let index = listOfItemsTableViewOutlet.indexPathForSelectedRow!.row
        ItemDetailViewController.item = list.items[index]
    }
    
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
