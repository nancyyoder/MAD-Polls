//
//  Foods.swift
//  Polls
//
//  Created by Nancy Yoder on 10/17/22.
//

import Foundation

struct Food: Hashable, Codable, Identifiable {
    var name: String
    var category: String
    var id: Int
    var emoji: String
//    var isFavorite: Bool
    var isLiked: Bool
    var isDisliked: Bool
    
}
