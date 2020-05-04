//
//  Room.swift
//  Roomy
//
//  Created by Mohamed Mostafa Fawzi on 4/24/20.
//  Copyright © 2020 Mohamed Mostafa Fawzi. All rights reserved.
//

import Foundation
import RealmSwift
//
// MARK: - Room
//
class Room: Object, Codable {
    //
    // MARK: - Variables And Properties
    //
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var price: String = ""
    @objc dynamic var place: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var theDescription: String = ""
    
    
    enum CodingKeys: String, CodingKey  {
        case id
        case title
        case price
        case place
        case image
        case theDescription = "description"

        
    }
    
}

