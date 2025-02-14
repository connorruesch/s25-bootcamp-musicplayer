//
//  MusicPlayerView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/14/25.
//

import SwiftUI

struct MusicPlayerView: View {
    @State var musicProgress: Double = 40
    
    var body: some View {
        VStack {
            Slider(value: $musicProgress, in: 0...100)
                .controlSize(.mini)
                .accentColor(.white)
            
            HStack{
                Text("2:03")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text("-3:39")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
        }
    }
}
