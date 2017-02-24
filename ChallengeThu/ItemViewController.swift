//
//  ItemViewController.swift
//  ChallengeThu
//
//  Created by Riccardo Barba on 22/02/17.
//  Copyright © 2017 Riccardo Barba. All rights reserved.
//

import UIKit

class ItemViewController: UITableViewController {

    @IBOutlet var plusItem: UIBarButtonItem!
    
    var itemStore:ItemStore = ItemStore()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
      
        let element:Item = Item(name: "Pane", description: "Rosetta", qta: 3, id: 2,image: "logo_ios11.png")
        itemStore.addElement(element: element)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemStore.array.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! ItemViewCell
    
        let item = itemStore.array[indexPath.row]
    
        cell.labelName.text = item.name
        cell.labelQta.text = "\(item.qta)"
        cell.labelDescription.text = item.description
        // Configure the cell...
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            itemStore.array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        itemStore.moveItem(from: fromIndexPath.row,to: to.row)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        switch(segue.identifier)
        {
            case "showItem"?: if let currentIndex = tableView.indexPathForSelectedRow?.row
            {
                let my_item = itemStore.array[currentIndex]
                let detView = segue.destination as! DetailsViewController
                detView.currentItem = my_item
                detView.flag = 0
            }
        case "newItem"?:
            
          let my_item = Item()
         
          let detView = segue.destination as! DetailsViewController
          detView.currentItem = my_item
          detView.itemArray = itemStore
          detView.flag = 1
        default: preconditionFailure("Segue non valido")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    

}
