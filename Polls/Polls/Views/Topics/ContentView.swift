//
//  ContentView.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CategoriesList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(ModelData())
    }
}
