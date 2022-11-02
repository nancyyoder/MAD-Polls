//
//  Feed.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct Feed: View {
    @EnvironmentObject var modelData: ModelData
    var category: String
    var topic: Topic
    
    var filteredTopics: [Topic] {
        ModelData.shared.topics.filter { topic in
            topic.category == category
        }
    }
    
    @State var topicIndex: Int
    
    var body: some View {
        
        //        if(gory == "Animals") {
        //            topicIndex = 0;
        //        }
        //
        //        else if(gory == "Food") {
        //            topicIndex = 6;
        //        }
        //
        //        else {
        //            topicIndex = 0;
        //        }
        
        VStack {
            //            TopicDetail(topic: filteredTopics[topicIndex])
            // the issue is that topic detial is being passed this new array rather than the model data array so the info (isLiked or isDisliked) is not updating in the ModelData and therefore endScreen is not showing the right data
            
            TopicDetail(topic: ModelData.shared.topics[topic.index]).environmentObject(ModelData.shared)
            
            if (filteredTopics.last == topic) {
                NavigationLink{
                    EndScreen(gory: category)
                } label: {
                    Text("Finish")
                }
            }
            else{
                Button("Next") {
                    //topic.index += 1
                }
            }
            
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed(category: "Animals", topic: ModelData.shared.topics[0]).environmentObject(ModelData.shared)
    }
}


