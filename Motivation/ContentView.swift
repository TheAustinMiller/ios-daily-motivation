//
//  ContentView.swift
//  Motivation
//
//  Created by Big Guy on 11/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var currentQuote = "Tap button for motivation!"
    
    let quotes = [
        "Keep going - you are doing great!",
        "Small steps every day!",
        "Believe in yourself!",
        "You've got this!",
        "Keep pushing forward!",
        "You're amazing!",
        "You've got a lot of potential!",
        "You're not alone in this!",
        "You've got a bright future ahead of you!"
    ]
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Daily Motivation!")
                .bold()
                .font(.title)
            
            Text(currentQuote)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("New Quote") {
                currentQuote = quotes.randomElement()!
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
