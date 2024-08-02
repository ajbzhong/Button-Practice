//
//  ContentView.swift
//  Interactivity-Practice
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State var textTitle = "What is your name? 🍓"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter here", text: $name)
                .multilineTextAlignment(.center)
                .frame(height: 50.0)
                .fontWeight(.bold)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit") {
                textTitle = "Welcome, \(name)!"
            }
                .buttonStyle(.bordered)
                .font(.headline)
                .tint(.purple)
        }
    }
}

#Preview {
    ContentView()
}
