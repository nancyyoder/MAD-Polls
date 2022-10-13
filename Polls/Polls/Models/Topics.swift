//
//  Topics.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import Foundation

struct Topic: Hashable, Codable, Identifiable {
    var name: String
    var category: String
    var id: Int
    var emoji: String
    var isFavorite: Bool
    var isLiked: Bool
    var isDisliked: Bool
    
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
    
}
