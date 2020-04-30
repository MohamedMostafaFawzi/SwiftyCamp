//
//  Room.swift
//  Roomy
//
//  Created by Mohamed Mostafa Fawzi on 4/24/20.
//  Copyright © 2020 Mohamed Mostafa Fawzi. All rights reserved.
//

import Foundation

//
// MARK: - Room
//

struct Room: Codable {
    
    //
    // MARK: - Variables And Properties
    //
    
    var id: Int
    var title: String
    var price: String
    var place: String
    var image: String
    var description: String
    
}

