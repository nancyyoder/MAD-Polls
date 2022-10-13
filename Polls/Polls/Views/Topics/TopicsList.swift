//
//  TopicsList.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct TopicsList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(modelData.topics) { topic in
                    NavigationLink {
                        Feed(topic: topic)
                    }label: {
                        TopicsRow(topic: topic)
                    }
                    
                }
            }
        }.navigationTitle("Topics")
    }
}

struct TopicsList_Previews: PreviewProvider {
    static var previews: some View {
        TopicsList()
            .environmentObject(ModelData())
    }
}
