//
//  EndScreen.swift
//  Polls
//
//  Created by Nancy Yoder on 10/12/22.
//

import SwiftUI

struct EndScreen: View {
    @EnvironmentObject var modelData: ModelData
//    var topic: Topic
    
    var body: some View {
        ForEach(modelData.topics) { topic in
            endScreenRow(topic: topic)
        }
            
        }
    }

struct EndScreen_Previews: PreviewProvider {
    static var previews: some View {
        EndScreen()
    }
}
