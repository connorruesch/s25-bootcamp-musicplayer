//
//  PlayerButtonView.swift
//  SpotifyClone
//
//  Created by Connor Ruesch on 2/14/25.
//

import SwiftUI

struct PlayerButtonView: View {
    @State var toggled: Bool = false
    
    let icon: String
    
    var body: some View {
        Button(action: {
            toggled.toggle()
        }) {
            VStack {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(toggled ? .green : .white)
                
                if toggled {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 5, height: 5)
                }
            }
        }
    }
}
