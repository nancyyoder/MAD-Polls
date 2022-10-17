//
//  CategoriesList.swift
//  Polls
//
//  Created by Nancy Yoder on 10/17/22.
//

import SwiftUI

struct CategoriesList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(modelData.categories) { category in
                    NavigationLink {
                        Feed(gory: category.category, topic: ModelData().topics[0]).environmentObject(ModelData())
                    }label: {
                        CategoryRow(category: category)
                    }
                    
                }
            }
        }.navigationTitle("Categories")
    }
}

struct CategoriesList_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesList()
            .environmentObject(ModelData())
    }
}
