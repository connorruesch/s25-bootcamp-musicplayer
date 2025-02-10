//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var musicProgress: Double = 40
    
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
                HStack {
                    Image(systemName: "chevron.down")
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Text("The Last Goodbye")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.white)
                }
                .padding(20)
                .background(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.5), Color.black.opacity(0.3), Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom))
                
                Spacer()
                
                // VStack for vertically aligning the bottom controls on the player
                VStack {
                    // Album artwork, title, and like button
                    HStack {
                        Image(.odesza2)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(3)
                        
                        VStack(alignment: .leading) {
                            Text("The Last Goodbye")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                            Text("ODESZA")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "checkmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.green)
                    }
                    .padding(.bottom, 10)
                    
                    // Slider w/ media time stamps
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
                    
                    // Media controls and icons
                    HStack {
                        // Shuffle
                        VStack {
                            Image(systemName: "shuffle")
                                .font(.title2)
                                .foregroundStyle(.green)
                            
                            Circle()
                                .fill(Color.green)
                                .frame(width: 5, height: 5)
                        }
                        
                        Spacer()
                        
                        // Backwards Arrow
                        Image(systemName: "backward.end.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        
                        // Pause button
                        Circle()
                            .fill(Color.white)
                            .frame(width: 60, height: 60)
                            .overlay(
                                HStack {
                                    Image(systemName: "pause")
                                        .font(.title)
                                        .fontWeight(.bold)
                                }
                            )
                        
                        Spacer()
                        
                        // Forwards Arrow
                        Image(systemName: "forward.end.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        
                        // Repeat
                        VStack {
                            Image(systemName: "repeat")
                                .font(.title2)
                                .foregroundStyle(.green)
                            
                            Circle()
                                .fill(Color.green)
                                .frame(width: 5, height: 5)
                        }
                    }
                    .padding(.bottom, 20)
                    
                    // Output controls and other icons
                    HStack {
                        // Audio/Output Icon
                        HStack {
                            Image(systemName: "airpods.pro")
                                .font(.title3)
                                .foregroundStyle(.green)
                            
                            Text("Connor's Airpods Pro")
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundStyle(.green)
                        }
                        
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
