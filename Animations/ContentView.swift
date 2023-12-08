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
//    @State private var animationAmount = 0.0 // explicit animations
//    @State private var enabled = false
//    let letters = Array("Hello SwiftUI") // animating gestures
//
//    @State private var enabled = false
//    @State private var dragAmount = CGSize.zero // animating gestures
    
    //showing and hiding views with transition
    @State private var isShowingRed = false
    
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
        //        Button("Tap Me") {
        //            withAnimation(.spring(duration: 1, bounce: 0.5)) {
        //                animationAmount += 360
        //            }
        //        }
        //        .padding(50)
        //        .background(.red)
        //        .foregroundStyle(.white)
        //        .clipShape(.circle)
        //        .rotation3DEffect(
        //            .degrees(animationAmount), axis: (x: 0.5, y: 1, z: 1)
        //        )
        
        //day 33 starts here; controlling the animation stack
        //        Button("Tap Me") {
        //            enabled.toggle()
        //        }
        //        .frame(width: 200, height: 200)
        //        .background(enabled ? .red : .blue)
        //        .foregroundStyle(.white)
        //        .animation(.default, value: enabled)
        //        .clipShape(.rect(cornerRadius: enabled ? 60 : 30))
        //        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
        //
        //animation gestures
        //        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: //.bottomTrailing)
        //            .frame(width: 300, height: 200)
        //            .clipShape(.rect(cornerRadius: 10))
        //            .offset(dragAmount)
        //            .gesture(
        //                DragGesture()
        //                    .onChanged { dragAmount = $0.translation }
        //                    .onEnded { _ in
        //                        withAnimation(.bouncy) { //explicit animation
        //                            dragAmount = .zero
        //                        }
        //                    }
        //            )
        //            .animation(.bouncy, value: dragAmount) //implicit animation
        //      Stack(spacing: 0) {
        //         ForEach(0..<letters.count, id: \.self) { num in
        //             Text(String(letters[num]))
        //                 .padding(5)
        //                 .font(.title)
        //                 .background(enabled ? .blue : .red)
        //                 .offset(dragAmount)
        //                 .animation(.linear.delay(Double(num) / 20), value: dragAmount)
        //         }
        //
        //      gesture(
        //         DragGesture()
        //             .onChanged { dragAmount = $0.translation }
        //             .onEnded { _ in
        //                     dragAmount = .zero
        //                 enabled.toggle()
        //             }
        //
        
        //showing and hiding views with transition
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width:200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    ContentView()
}
