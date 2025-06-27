//
//  RoundSummaryView.swift
//  TriviaGame-SwiftUI
//
//  Created by Bhumi Thummar on 11/03/25.
//

import SwiftUI

struct RoundSummaryView: View {
    let round: Int
    let player1Correct: Bool
    let player2Correct: Bool
    let player1Time: Double
    let player2Time: Double
    let continueAction: () -> Void

    // Compute Winner Text
    var winnerText: String {
        if player1Correct && !player2Correct {
            return "🎉 Player 1 won!"
        } else if player2Correct && !player1Correct {
            return "🎉 Player 2 won!"
        } else if player1Correct && player2Correct {
            return player1Time < player2Time ? "⚡ Player 1 won (Faster)!" : "⚡ Player 2 won (Faster)!"
        }
         else if !player1Correct && !player2Correct {
            return "😅 No one got it right!"
        }
        else if player1Correct == player2Correct {
            return "😅 🤝 It's a Tie!"
        }
        else {
            return "😅 No one got it right!"
        }
    }

    var body: some View {
        ZStack {
            // Blurred Background

            VStack(spacing: 20) {
                Text("🏆 Round \(round) 🏆")
                    .font(.largeTitle)
                    .bold()

                Text(winnerText)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.theme)

                // Scoreboard Table
                VStack {
                    HStack {
                        Text("Player").bold().frame(maxWidth: .infinity)
                        Text("Correct").bold().frame(maxWidth: .infinity)
                        Text("Time").bold().frame(maxWidth: .infinity)
                    }
                    .padding()
//                    .background(Color.white.opacity(0.3))
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)

                    HStack {
                        Text("Player 1").frame(maxWidth: .infinity)
                        Text(player1Correct ? "✅" : "❌")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(player1Correct ? .green : .red)
                        Text("\(String(format: "%.2f", player1Time))s")
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
//                    .background(Color.black.opacity(0.2))
//                    .cornerRadius(10)

                    HStack {
                        Text("Player 2").frame(maxWidth: .infinity)
                        Text(player2Correct ? "✅" : "❌")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(player2Correct ? .green : .red)
                        Text("\(String(format: "%.2f", player2Time))s")
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
//                    .background(Color.black.opacity(0.2))
//                    .cornerRadius(10)
                }
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

                // Continue Button
                Button(action: {
                    continueAction()
                }) {
                    Text("Continue to Next Round")
                        .padding()
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
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
}
