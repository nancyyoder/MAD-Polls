//
//  EndScreen.swift
//  Polls
//
//  Created by Nancy Yoder on 10/12/22.
//

import SwiftUI

struct EndScreen: View {
    @EnvironmentObject var modelData: ModelData
    var gory: String
    
    var filteredTopics: [Topic] {
        topics.filter { topic in
            topic.category == gory
        }
    }
    
    var body: some View {
        ForEach(filteredTopics) { topic in
            endScreenRow(topic: topic)
        }
            
        }
    }

struct EndScreen_Previews: PreviewProvider {
    static var previews: some View {
        EndScreen(gory: "Animals")
    }
}
