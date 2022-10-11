//
//  DislikeButton.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct DislikeButton: View {
    @Binding var isDisliked: Bool
    
    var body: some View {
        Button {
            isDisliked.toggle()
            
        } label: {
            Label("Like", systemImage: isDisliked ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                .labelStyle(.iconOnly)
        }
    }
}

struct DislikeButton_Previews: PreviewProvider {
    static var previews: some View {
        DislikeButton(isDisliked: .constant(false))
    }
}
