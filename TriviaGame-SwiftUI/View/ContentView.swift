//
//  ContentView.swift
//  TriviaGame-SwiftUI
//
//  Created by Bhumi Thummar on 11/03/25.
//
import SwiftUI
struct ContentView: View {
    @State private var isGameStarted = false
    var body: some View {
        if isGameStarted {
            GameScreen()
        } else {
            WelcomeScreen(isGameStarted: $isGameStarted)
        }
    }
}
struct WelcomeScreen: View {
    @Binding var isGameStarted: Bool
    var body: some View {
        VStack(spacing: 30) {
            VStack{
                Text("Welcome to")
                    .font(.title)
                    .foregroundColor(.gray)
                
                Text("SAT Math Game")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            
            Button(action: {
                isGameStarted = true
            }) {
                Text("Let's Start")
                    .padding()
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .background(.theme)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .buttonStyle(BorderlessButtonStyle())
        }
        .padding()
    }
}
