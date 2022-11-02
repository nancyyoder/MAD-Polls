//
//  CategoryRow.swift
//  Polls
//
//  Created by Nancy Yoder on 10/17/22.
//

import SwiftUI

struct CategoryRow: View {
    var category: Category
    
    var body: some View {
        HStack{
            Text(category.emoji)
            Text(category.category)
            
            Spacer()
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var categories = ModelData.shared.categories
    
    static var previews: some View {
        Group{
            CategoryRow(category: categories[0])
            CategoryRow(category: categories[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
