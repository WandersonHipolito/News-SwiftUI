//
//  PostData.swift
//  News
//
//  Created by Wanderson Hipolito on 18/05/20.
//  Copyright © 2020 Wanderson Hipolito. All rights reserved.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    var id: String{
        return objectID
    }
    
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}

//struct FailableDecodable<Base : Decodable> : Decodable {
//
//    let base: Base?
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        self.base = try? container.decode(Base.self)
//    }
//}
