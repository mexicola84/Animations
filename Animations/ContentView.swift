//
//  ContentView.swift
//  Animations
//
//  Created by Jan Grimm on 07.12.23.
//

import SwiftUI

struct ContentView: View {
//    @State private var animationAmount = 1.0 //impicit animations
//    @State private var animationAmount = 2.0 //implicit binding animations
    @State private var animationAmount = 0.0 // explicit animations
    
    var body: some View {
//        // day 32 implicit animations
//        Button("Tap me") {
//            //animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        //customizing implicit animations.
//        .overlay(
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(.easeOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount) //value needed as the animation may start always when a view is changed, like flipping to phone to horizontal view.
//        )
//        .onAppear{
//            animationAmount = 2
        
//        }
        
        //biding animation starts here
//        print(animationAmount)
//
//        return VStack {
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//
//            Spacer()
//
//            Button("Tap me") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundStyle(.white)
//            .clipShape(.circle)
//            .scaleEffect(animationAmount)
//        }
        
        //explicit animations starts here
        Button("Tap Me") {
            withAnimation(.spring(duration: 1, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount), axis: (x: 0.5, y: 1, z: 1)
        )
    }
}

#Preview {
    ContentView()
}
