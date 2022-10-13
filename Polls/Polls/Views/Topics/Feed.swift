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
    
    @State var topicIndex: Int = 0
    var arrayLength = ModelData().topics.count - 1
    
    var body: some View {
        
        VStack{
            TopicDetail(topic: ModelData().topics[topicIndex])
            if(topicIndex == arrayLength) {
                NavigationLink{
                    EndScreen()
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
        Feed(topic: ModelData().topics[0]).environmentObject(ModelData())
    }
}
