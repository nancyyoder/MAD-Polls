//
//  endScreenRow.swift
//  Polls
//
//  Created by Nancy Yoder on 10/12/22.
//

import SwiftUI

struct endScreenRow: View {
    var topic: Topic
    var body: some View {
        HStack{
            Text(topic.emoji)
            Text(topic.name)
            
            Spacer()
            
            if topic.isLiked {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.blue)
            }
            
            else if topic.isDisliked {
                Image(systemName: "hand.thumbsdown.fill")
                    .foregroundColor(.blue)
            }
            
            else {
                Text("error")
            }
        }
    }
}

struct endScreenRow_Previews: PreviewProvider {
    static var topics = ModelData().topics
    
    static var previews: some View {
        endScreenRow(topic: topics[0])
    }
}
