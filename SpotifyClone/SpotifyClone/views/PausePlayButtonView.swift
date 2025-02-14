//
//  PausePlayButtonView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/14/25.
//

import SwiftUI

struct PausePlayButtonView: View {
    @State var isPlaying: Bool = false
    
    var body: some View {
        Button(action: {
            isPlaying.toggle()
        }) {
            Circle()
                .fill(Color.white)
                .frame(width: 60, height: 60)
                .overlay(
                    HStack {
                        Image(systemName: isPlaying ? "play.fill" : "pause")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    }
                )
        }
    }
}
