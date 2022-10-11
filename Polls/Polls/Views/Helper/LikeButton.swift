//
//  LikeButton.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct LikeButton: View {
    @Binding var isLiked: Bool
    
    
    var body: some View {
        Button {
            isLiked.toggle()
        } label: {
            Label("Like", systemImage: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                .labelStyle(.iconOnly)
        }

    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(isLiked: .constant(false))
    }
}
