//
//  LikeDislikeButtons.swift
//  Polls
//
//  Created by Nancy Yoder on 10/10/22.
//

import SwiftUI

enum Icon: String {
    case like = "hand.thumbsup"
    case dislike = "hand.thumbsdown"
    
    var filled: String {
        "\(rawValue).fill"
    }
    
}

struct LikeDislikeButtons: View {
    
    @Binding var isLiked: Bool
    @Binding var isDisliked: Bool

    var body: some View {
        HStack{
            Button {
                isLiked.toggle()
                setLikedState(liked: true, disliked: false)
            } label: {
                Label("Like", systemImage: isLiked ? Icon.like.filled : Icon.like.rawValue)
                    .labelStyle(.iconOnly)
                    .foregroundColor(isLiked ? .blue : .gray)
            }
            Spacer()
            Button {
                isDisliked.toggle()
                setLikedState(liked: false, disliked: true)
            } label: {
                Label("Dislike", systemImage: isDisliked ? Icon.dislike.filled : Icon.dislike.rawValue)
                    .labelStyle(.iconOnly)
                    .foregroundColor(isDisliked ? .blue : .gray)
            }
            
        }.padding([.leading, .trailing], 100)
    }
    func setLikedState(liked: Bool, disliked: Bool) {
        isLiked = liked
        isDisliked = disliked
        
    }
}

struct LikeDislikeButtons_Previews: PreviewProvider {
    static var previews: some View {
        LikeDislikeButtons(isLiked: .constant(false), isDisliked: .constant(false))
    }
}
