//
//  DetailsViewController.swift
//  ChallengeThu
//
//  Created by Riccardo Barba on 22/02/17.
//  Copyright © 2017 Riccardo Barba. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var textName: UITextField!
    @IBOutlet var textDescription: UITextField!
    @IBOutlet var textQta: UITextField!
    @IBOutlet var labelData: UILabel!
    
    var currentItem:Item!
    var itemArray:ItemStore!
    var flag:Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var imageItem: UIImageView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        textName.text = currentItem.name
        textDescription.text = currentItem.description
        textQta.text = "\(currentItem.qta)"
        labelData.text = currentItem.data.description
        
        imageItem?.image = UIImage(named: currentItem.image)
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        currentItem.name = textName.text!
        currentItem.description = textDescription.text!
        currentItem.qta = Int(textQta.text!)!
        
        if(currentItem.name != "" && flag > 0)
        {
        itemArray.array.append(currentItem)
        }
        else if( flag>0)
        {
            currentItem.name = "Elemento Vuoto"
            itemArray.array.append(currentItem)
        }
        
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
