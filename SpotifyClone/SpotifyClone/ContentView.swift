//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background image to mimic Spotify's "Canvas" feature ->
            // usually gifs are used here however for now I'm just going
            // to use an image that fills the entire screen.
            Image(.odesza1)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            
            // VStack that will contain all of our UI elements on the page
            VStack {
                // HStack for the top bar -> contains album name, down
                // arrow, etc.
                TopBarView(albumText: "The Last Goodbye")
                
                Spacer()
                
                // VStack for vertically aligning the bottom controls on the player
                VStack {
                    // Album artwork, title, and like button
                    AlbumPreviewView(albumImage: "odesza_2", songTitle: "The Last Goodbye", artistName: "ODESZA")
                    
                    
                    // Slider w/ media time stamps
                    MusicPlayerView()
                    
                    // Media controls and icons
                    HStack {
                        // Shuffle Button
                        PlayerButtonView(icon: "shuffle")
                        
                        Spacer()
                        
                        // Backwards Arrow
                        Image(systemName: "backward.end.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        
                        // Pause Button
                        PausePlayButtonView()
                        
                        Spacer()
                        
                        // Forwards Arrow
                        Image(systemName: "forward.end.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        
                        // Repeat Button
                        PlayerButtonView(icon: "repeat")
                    }
                    .padding(.bottom, 20)
                    
                    // Output controls and other icons
                    HStack {
                        // Audio/Output Icon
                        AudioOutputView(icon: "airpods.pro", title: "Connor's Airpods Pro")
                        
                        Spacer()
                        
                        // Share/setting icon
                        Image(systemName: "square.and.arrow.up")
                            .font(.title3)
                            .foregroundStyle(.white)
                            .padding(.horizontal, 10)
                        
                        Image(systemName: "ellipsis.circle")
                            .font(.title3)
                            .foregroundStyle(.white)
                    }
                }
                .padding(30)
                .frame(maxWidth: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.black.opacity(0.8), Color.black.opacity(0.8), Color.black.opacity(0)]), startPoint: .bottom, endPoint: .top))
            }
        }
    }
}

#Preview {
    ContentView()
}
