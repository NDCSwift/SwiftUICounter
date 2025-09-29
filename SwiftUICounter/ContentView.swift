//
//  ContentView.swift
//  SwiftUICounter
//
//  Created by Noah Carpenter on 2024-10-28
//
//  🐱 Follow me on YouTube! 🎥
//  https://www.youtube.com/@NoahDoesCoding97
//  Like and Subscribe for coding tutorials and fun! 💻✨
//  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
//  Dream Big, Code Bigger
//

import SwiftUI

// ScoreModel class that holds the score and publishes updates
class ScoreModel: ObservableObject {
    @Published var score = 0 // Published score property, updates automatically when changed
}

struct ContentView: View {
    // Observed object to manage score data across views
    @ObservedObject var scoreModel = ScoreModel()

    var body: some View {
        NavigationStack {
            VStack {
                // Display the current score in a large title font
                Text("Score \(scoreModel.score)")
                    .font(.largeTitle)

                // Button to increase the score when tapped
                Button(action: {
                    scoreModel.score += 1 // Increment score by 1
                }) {
                    Text("Increase Score")
                        .padding() // Add padding to the button
                        .background(Color.blue) // Set background color to blue
                        .foregroundStyle(Color.white) // Set text color to white
                        .cornerRadius(20) // Apply rounded corners to the button
                }

                // Navigation link to navigate to the ScoreDetailView
                NavigationLink(destination: ScoreDetailView(scoreModel: scoreModel)) {
                    Text("Go to Score Detail")
                        .padding() // Add padding around the text
                        .background(Color.green) // Set background color to green
                        .foregroundStyle(Color.white) // Set text color to white
                        .cornerRadius(20) // Apply rounded corners to the button
                }
            }
            .padding() // Add padding to the VStack for layout
        }
    }
}

// Preview for ContentView to visualize the UI in Xcode's preview
#Preview {
    ContentView()
}
