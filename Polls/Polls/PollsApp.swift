//
//  PollsApp.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

@main
struct PollsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)   
        }
    }
}
