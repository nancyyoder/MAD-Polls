//
//  Feed.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct Feed: View {
    @EnvironmentObject var modelData: ModelData
    var topic: Topic
    
    var topicIndex: Int {
        modelData.topics.firstIndex(where: { $0.id == topic.id })!
    }
    
//    var theTopics: [Topic] {
//        topic.isLiked = false
//        topic.isDisliked
//    }
//
    
    var body: some View {
        
        // I want to loop through the topics, and only move to the next one when the like or dislike button is clicked
        
//        ForEach(topic) { topic in
//
//        }
        
        
        TopicDetail(topic: ModelData().topics[0])
        
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed(topic: ModelData().topics[0]).environmentObject(ModelData())
    }
}
