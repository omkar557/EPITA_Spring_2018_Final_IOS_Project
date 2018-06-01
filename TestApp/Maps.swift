//
//  Maps.swift
//  TestApp
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 NOTNULL. All rights reserved.
//

import Foundation

class Maps {
    var mapname:String?
    var rank:String?
    var type:String?
    var description:String?
    var image: String?
    
    init(mapname:String,
         rank:String,
         type:String,
         description:String,
         image:String
        ){
        self.mapname = mapname
        self.rank = rank
        self.type = type
        self.description = description
        self.image=image
    }
    
    
}
