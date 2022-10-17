//
//  ModelData.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import Foundation


final class ModelData: ObservableObject {
    @Published var topics: [Topic] = load("topics.json")
    @Published var foods: [Food] = load("food.json")
    @Published var animals: [Animal] = load("animals.json")
    @Published var categories: [Category] = load("categories.json")
}

var topics: [Topic] = load("topics.json")
var filteredTopics: [Topic] = []
//var foods: [Food] = load("food.json")
//var animals: [Animal] = load("animals.json")
var categories: [Category] = load("categories.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

