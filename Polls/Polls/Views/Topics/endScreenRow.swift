//
//  endScreenRow.swift
//  Polls
//
//  Created by Nancy Yoder on 10/12/22.
//

import SwiftUI

enum Status: String {
    case like = "hand.thumbsup.fill"
    case dislike = "hand.thumbsdown.fill"
    case error = "questionmark"
}

struct endScreenRow: View {
    var topic: Topic
    var body: some View {
        HStack{
            Text(topic.emoji)
                .font(.largeTitle)
            Text(topic.name)
                .font(.largeTitle)
            
            Spacer()
            
            if topic.isLiked {
                Image(systemName: Status.like.rawValue)
                    .foregroundColor(.green)
                    .font(.title)
            }
            
            else if topic.isDisliked {
                Image(systemName: Status.dislike.rawValue)
                    .foregroundColor(.pink)
                    .font(.title)
            }
            
            else {
                Image(systemName: Status.error.rawValue)
                    .font(.title)
            }
        }.padding()
    }
}

struct endScreenRow_Previews: PreviewProvider {
    static var topics = ModelData.shared.topics
    
    static var previews: some View {
        endScreenRow(topic: topics[0])
    }
}
