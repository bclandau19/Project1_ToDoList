//
//  MainViewController.swift
//  ToDoList-BenLandau
//
//  Created by Benjamin Landau on 11/15/16.
//  Copyright © 2016 Benjamin Landau. All rights reserved.
//

import UIKit

class ListOfListsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listsTableViewOutlet: UITableView!
    
    @IBOutlet weak var newListTextFieldOutlet: UITextField!
    
    @IBAction func addNewList(_ sender: Any) {
        if newListTextFieldOutlet.text == "" { return }
        let newList = List(title: newListTextFieldOutlet.text!)
        newListTextFieldOutlet.text = nil
        lists.append(newList)
        listsTableViewOutlet.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListOfListsTableViewCell", for: indexPath) as! ListOfListsTableViewCell
        cell.titleLabelOutlet.text = lists[indexPath.row].title
        return cell
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listOfItemsViewController = segue.destination as! ListOfItemsViewController
        let index = listsTableViewOutlet.indexPathForSelectedRow!.row
        listOfItemsViewController.list = lists[index]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    
}
