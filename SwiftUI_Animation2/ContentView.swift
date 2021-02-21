//
//  ContentView.swift
//  SwiftUI_Animation2
//
//  Created by 김선중 on 2021/02/21.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        
        Button("Tapl Me") {
            //self.animationAmount += 1
        }
        .padding(50)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.yellow, lineWidth: 2)
                .scaleEffect(animationAmount)
                //animationAmount가 1이면 불트명이 1이고, 2이면 불투명도가 0이다
                .opacity(Double(2 - animationAmount))
                .animation(Animation.easeInOut(duration: 1)
                            .repeatForever(autoreverses: false)))
        .onAppear {
            self.animationAmount = 2
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
