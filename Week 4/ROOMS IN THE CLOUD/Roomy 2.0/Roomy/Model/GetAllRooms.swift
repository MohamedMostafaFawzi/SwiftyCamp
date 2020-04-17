//
//  GetAllRooms.swift
//  Roomy
//
//  Created by Mohamed Mostafa Fawzi on 4/17/20.
//  Copyright © 2020 Mohamed Mostafa Fawzi. All rights reserved.
//

import Foundation

struct GetAllRooms: Codable {
    var id: Int
    var title: String?
    var price: String?
    var place: String?
    var image: String?
    var description: String?
}
