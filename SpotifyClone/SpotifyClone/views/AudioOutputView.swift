//
//  AudioOutputView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/14/25.
//

import SwiftUI

struct AudioOutputView: View {
    let icon: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(.green)
            
            Text(title)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(.green)
        }
    }
}
