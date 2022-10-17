//
//  Feed.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct Feed: View {
    @EnvironmentObject var modelData: ModelData
    var gory: String
    var topic: Topic
    
    var filteredTopics: [Topic] {
        ModelData().topics.filter { topic in
            topic.category == gory
        }
    }
    
    @State var topicIndex: Int = 0

    
    var body: some View {
        
        VStack{
            TopicDetail(topic: filteredTopics[topicIndex])
            // the issue is that topic detial is being passed this new array rather than the model data array so the info (isLiked or isDisliked) is not updating in the ModelData and therefore endScreen is not showing the right data
            
//            TopicDetail(topic: ModelData().topics[0]).environmentObject(ModelData())
            
            if(topicIndex == (filteredTopics.count - 1)) {
                NavigationLink{
                    EndScreen(gory: gory)
                } label: {
                    Text("Finish")
                }
            }
            else{
                Button("Next") {
                    topicIndex += 1
                }
            }

        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed(gory: "Animals", topic: ModelData().topics[0]).environmentObject(ModelData())
    }
}
