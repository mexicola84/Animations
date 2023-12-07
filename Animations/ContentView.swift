//
//  ContentView.swift
//  Animations
//
//  Created by Jan Grimm on 07.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        // day 32 implicit animations
        Button("Tap me") {
            //animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        //customizing implicit animations.
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount) //value needed as the animation may start always when a view is changed, like flipping to phone to horizontal view.
        )
        .onAppear{
            animationAmount = 2
        }
    }
}

#Preview {
    ContentView()
}
