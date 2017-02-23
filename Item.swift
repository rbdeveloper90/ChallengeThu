//
//  Item.swift
//  ChallengeThu
//
//  Created by Riccardo Barba on 22/02/17.
//  Copyright © 2017 Riccardo Barba. All rights reserved.
//

import Foundation

class Item {
    
    var name:String
    var description:String
    var qta:Int
    var data:Date
    var id:Int
    var image:String
    
    
    init(name:String,description:String,qta:Int,id:Int,image:String)
    {
        self.name = name
        self.description = description
        self.qta = qta
        self.data = Date()
        self.id = id
        self.image=image
    }
    
     init()
    {
        self.name = ""
        self.description = ""
        self.qta = 0
        self.data = Date()
        self.id = 0
        self.image = ""
    }
}
