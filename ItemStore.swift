//
//  ItemStore.swift
//  ChallengeThu
//
//  Created by Riccardo Barba on 22/02/17.
//  Copyright © 2017 Riccardo Barba. All rights reserved.
//

import Foundation

class ItemStore {
    
    var array:Array = Array<Item>()
    var id:Int?
    var element:Item?
    
    
    
    init()
    {
    }
    
    func addElement (element:Item) -> Item
    {
        self.array.append(element)
        return element
    }
    
    func removeElement (element:Item)
    {
        
              self.array.remove(at: element.id)
        
    }
    
    func reOrder(element:Item,element1:Item) -> Array<Item>
    {
        var tmp:Item = element
        var elementIn = element1
        //self.array[tmp.id] = element1
        element1.id = tmp.id
        
        self.array[element1.id] = elementIn
        elementIn.id = element1.id
        
        return self.array
    }
    
    func print()
    {
        let elementi = self.array
        for var elementi:Item in self.array[0...self.array.count]
        {
            //print(" ",elementi.id," elemento ",elementi.name)
        }
        
    }
    
    
    func moveItem(from srcindx:Int,to dstidx:Int)
     {
      let srcItem = self.array[srcindx]
     
     self.array.remove(at: srcindx)
     
     self.array.insert(srcItem, at: dstidx)
     }
 
    
    
    
}
