//
//  ScoreboardView.swift
//  TriviaGame-SwiftUI
//
//  Created by Bhumi Thummar on 11/03/25.
//

import SwiftUI

struct ScoreboardView: View {
    let scoreboard: [(round: Int, p1Correct: Int, p2Correct: Int, p1Time: Double, p2Time: Double, winnerPlayer: String)]
    let player1Score: Int
    let player2Score: Int
    let restartGame: () -> Void

    var winnerText: String {
        if player1Score == player2Score {
            return "😅 🤝 It's a Tie!"
        }
        return player1Score > player2Score ? "⚡ Player 1 Wins" : "⚡ Player 2 Wins"
    }

    var body: some View {
        VStack {
            Text("🏆 Game Over! 🏆")
                .font(.largeTitle)
                .padding()
            
            Text("Final Scores:")
                .font(.headline)
            
            Text(winnerText)
                .font(.system(size: 25))
                .bold()
                .foregroundColor(.theme)
                .padding(.bottom, 10)
            
            // **Scrollable Scoreboard**
            VStack {
                HStack {
                    Text("Round").bold().frame(maxWidth: .infinity)
                    Text("P1 (\(player1Score))").bold().frame(maxWidth: .infinity)
                    Text("P2 (\(player2Score))").bold().frame(maxWidth: .infinity)
                }
                .padding()
                .background(Color.gray.opacity(0.3))
                
                // **ScrollView for inner content only**
                ScrollView {
                    VStack {
                        ForEach(scoreboard, id: \.round) { roundData in
                            HStack {
                                Text("\(roundData.round)").frame(maxWidth: .infinity)
                                
                                Text("\(roundData.p1Correct == 1 ? "1" : "0") (\(String(format: "%.2f", roundData.p1Time))s)")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(roundData.winnerPlayer == "p1" ? .green : .red)
                                
                                Text("\(roundData.p2Correct == 1 ? "1" : "0") (\(String(format: "%.2f", roundData.p2Time))s)")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(roundData.winnerPlayer == "p2" ? .green : .red)
                            }
                            .padding(.vertical, 5)
                        }
                    }
                }
                .frame(maxHeight: 200) // **Limit scrolling area**
            }
            //            .background(Color.white)
            //            .shadow(radius: 5)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            
            Button(action: {
                restartGame()
            }) {
                Text("Restart Game")
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
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

