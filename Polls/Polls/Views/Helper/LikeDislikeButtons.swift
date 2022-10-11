//
//  LikeDislikeButtons.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

struct LikeDislikeButtons: View {
    
    @Binding var isLiked: Bool
    @Binding var isDisLiked: Bool

    var body: some View {
        HStack{
            Button {
                isLiked.toggle()
            } label: {
                Label("Like", systemImage: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                    .labelStyle(.iconOnly)
                    .foregroundColor(isLiked ? .blue : .gray)
            }
            Button {
                isLiked.toggle()
            } label: {
                Label("Like", systemImage: isLiked ? "hand.thumbdown.fill" : "hand.thumbsdown")
                    .labelStyle(.iconOnly)
                    .foregroundColor(isLiked ? .blue : .gray)
            }
            
        }
    }
}

struct LikeDislikeButtons_Previews: PreviewProvider {
    static var previews: some View {
        LikeDislikeButtons(isLiked: .constant(false), isDisLiked: .constant(false))
    }
}
