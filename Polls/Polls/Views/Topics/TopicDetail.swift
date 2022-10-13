//
//  TopicDetail.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct TopicDetail: View {
    @EnvironmentObject var modelData: ModelData
    var topic: Topic
    
    var topicIndex: Int {
        modelData.topics.firstIndex(where: { $0.id == topic.id })!
    }
    
    
    var body: some View {
        VStack{
            HStack{
                Text(topic.name).font(.title)
                Text(topic.emoji).font(.title)
            }
            Spacer()
            LikeDislikeButtons(isLiked: $modelData.topics[topicIndex].isLiked, isDisliked: $modelData.topics[topicIndex].isDisliked)

        }
        .padding([.bottom, .top], 180)
    }
}

struct TopicDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        TopicDetail(topic: ModelData().topics[0])
            .environmentObject(modelData)
    }
}
