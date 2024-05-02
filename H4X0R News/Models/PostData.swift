//
//  PostData.swift
//  H4X0R News
//
//  Created by See Sight Tours on 02/05/2024.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}
struct Post : Decodable , Identifiable {
//we need this identifiable protocol to use this struct in our content view
    var id: String {
        
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    //using optional string here because url can also be empty
}
