//
//  TopicsList.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct TopicsList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredTopics: [Topic] {
        modelData.topics.filter { topic in
            (!showFavoritesOnly || topic.isFavorite)
        }
    }
    
    
    var body: some View {
        
        
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredTopics) { topic in
                    NavigationLink {
                        TopicDetail(topic: topic)
                    } label: {
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
