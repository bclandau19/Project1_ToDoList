//
//  Data.model.swift
//  ToDoList-BenLandau
//
//  Created by Benjamin Landau on 11/15/16.
//  Copyright © 2016 Benjamin Landau. All rights reserved.
//

import Foundation

var lists = [List]() // this is the list of lists


class List {
    
    
    var title: String
    var items = [Item]() // this is the list of items inside the list
    
    init(title: String) {
        self.title = title
    }
}


class Item {
    var title: String
    var description: String
    
    init(title: String , description: String) {
        self.title = title
        self.description = description
    }
}




 var Ben = Item(title: "wasdfasf", description: "asdfds")

Ben.title



//
//
//func whatEver() {
//    
//    // 1st
//    var list1 = List(title: "List1") // create a new list
//    lists.append(list1) // put the new list into the list of lists
//    // tableView.reload()
//    
//    // 2nd
//    var item1 = Item(title: "Item1") // create a new item
//    list1.items.append(item1) // put the new item in the new list's items array
//    // tableView.reload()
//    
//    
//    
//    
//}
