//
//  AlbumPreviewView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/14/25.
//

import SwiftUI

struct AlbumPreviewView: View {
    @State var isLiked: Bool = false
    
    let albumImage: String
    let songTitle: String
    let artistName: String
    
    var body: some View {
        HStack {
            Image(albumImage)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            
            VStack(alignment: .leading) {
                Text(songTitle)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text(artistName)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: {
                isLiked.toggle()
            }) {
                if isLiked {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.title)
                        .foregroundColor(.green)
                } else {
                    Image(systemName: "plus.circle")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            
            
        }
        .padding(.bottom, 10)
    }
}
