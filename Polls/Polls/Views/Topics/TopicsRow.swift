//
//  TopicsRow.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct TopicsRow: View {
    var topic: Topic
    
    
    var body: some View {
        HStack{
            Text(topic.emoji)
            Text(topic.name)
            
            Spacer()
            
            if topic.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct TopicsRow_Previews: PreviewProvider {
    static var topics = ModelData().topics
    
    static var previews: some View {
        Group{
            TopicsRow(topic: topics[0])
            TopicsRow(topic: topics[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
