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
            HStack{

                LikeButton(isLiked:
                            $modelData.topics[topicIndex].isLiked)
                Spacer()
                DislikeButton(isDisliked: $modelData.topics[topicIndex].isDisliked)
                
            }.padding([.leading, .trailing], 100)

        }
        .padding([.bottom, .top], 220)
    }
}

struct TopicDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        TopicDetail(topic: ModelData().topics[0])
            .environmentObject(modelData)
    }
}
