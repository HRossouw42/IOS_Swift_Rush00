//
//  EventData.swift
//  42Events
//
//  Created by abduraghmaan GABRIELS on 2019/10/13.
//  Copyright © 2019 Rush00Team. All rights reserved.
//

import Foundation

class EventData : NSObject{
    var id:Int?
    var name:String
    var desc: String
    var location:String
    var kind:String
    var max_subs:Int?
    var nbr_subs:Int?
    var begin_at:String
    var end_at:String
    var campus_ids:[Int]
    var cursus_ids:[Int]
    
    init(event:[String:Any]){
        self.id         = event["id"] as? Int
        self.name       = event["name"] as! String
        self.desc       = event["description"] as! String
        self.location   = event["location"] as! String
        self.kind       = event["kind"] as! String
        self.max_subs   = event["max_subs"] as? Int
        self.nbr_subs   = event["nbr_subs"] as? Int
        self.begin_at   = event["begin_at"] as! String
        self.end_at     = event["end_at"] as! String
        self.campus_ids = event["campus_ids"] as! [Int]
        self.cursus_ids = event["cursus_ids"] as! [Int]
    }
}
