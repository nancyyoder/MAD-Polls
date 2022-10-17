//
//  Categories.swift
//  Polls
//
//  Created by Nancy Yoder on 10/17/22.
//

import Foundation

struct Category: Hashable, Codable, Identifiable {
    var category: String
    var id: Int
    var emoji: String
}

