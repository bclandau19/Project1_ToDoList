//
//  ItemDetailViewController.swift
//  ToDoList-BenLandau
//
//  Created by Benjamin Landau on 11/15/16.
//  Copyright © 2016 Benjamin Landau. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {
    
    var item: Item!
    
    @IBOutlet weak var itemDetailTextField: UITextField!
    
    @IBOutlet weak var itemDetailTextView: UITextView!
    
    @IBAction func addTo(_ sender: Any) {
        if itemDetailTextField.text == "" { return }
        let input = itemDetailTextField.text
        item.description = input!
        itemDetailTextView.text = item.description
        
                itemDetailTextField.text = nil
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        itemDetailTextView.text = item.description
        // Do any additional setup after loading the view.
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
