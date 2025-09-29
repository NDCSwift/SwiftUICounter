//
//  ScoreDetailView.swift
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

// ScoreDetailView is a SwiftUI View that displays and modifies the score.
struct ScoreDetailView: View {
    
    // ObservedObject that will hold the score model data and update the view accordingly
    @ObservedObject var scoreModel: ScoreModel
    
    var body: some View {
        VStack {
            
            // Title label for the ScoreDetailView
            Text("score detail view")
                .font(.title)
            
            // Display the current score from the ScoreModel
            Text("Current score \(scoreModel.score)")
                .font(.largeTitle)
            
            // Button that increases the score when tapped
            Button(action: {
                scoreModel.score += 1 // Increase the score by 1
            })
            {
                Text("Increase Score")
                    .padding() // Add padding around the text
                    .background(Color.blue) // Set background color of the button
                    .foregroundStyle(Color.white) // Set text color to white
                    .cornerRadius(20) // Apply rounded corners to the button
            }
        }
    }
}

// Preview for the ScoreDetailView, using a sample ScoreModel instance
#Preview {
    let sampleScoreModel = ScoreModel()
    ScoreDetailView(scoreModel: sampleScoreModel)
}
