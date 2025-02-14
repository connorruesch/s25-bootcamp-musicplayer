//
//  TopBarView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/14/25.
//

import SwiftUI

struct TopBarView: View {
    let albumText: String
    
    var body: some View {
        // Top bar of the app to be displayed
        HStack {
            Image(systemName: "chevron.down")
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(albumText)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.white)
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .foregroundStyle(.white)
        }
        .padding(20)
        .background(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0.2), Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom))
    }
}
