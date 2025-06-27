//
//  GameScreen.swift
//  TriviaGame-SwiftUI
//
//  Created by Bhumi Thummar on 11/03/25.
//

import SwiftUI
struct Question {
    let question: String
    let options: [String: String]
    let correctAnswer: String
}
struct GameScreen: View {
    @State
    private var questions = [
        Question(question: "If 4√2x = 16, what is the value of 6x?", options: ["a": "8", "b": "48", "c": "72", "d": "96"], correctAnswer: "b"),
        Question(question: "Solve for x: 2x + 3 = 7", options: ["a": "2", "b": "4", "c": "3", "d": "5"], correctAnswer: "a"),
        Question(question: "Solve for 2 + 3 = ?", options: ["a": "5", "b": "4", "c": "3", "d": "2"], correctAnswer: "a"),
        Question(question: "If 3x + 5 = 20, what is the value of x?", options: ["a": "5", "b": "6", "c": "4", "d": "2"], correctAnswer: "a"),
        Question(question: "Solve for 5(x−2)=3(x+4)", options: ["a": "-3", "b": "-6", "c": "3", "d": "6"], correctAnswer: "d"),
        Question(question: "For what value of n is n −1 +1 equal to 0 ?", options: ["a": "-1", "b": "1", "c": "0", "d": "-0"], correctAnswer: "c"),
        Question(question: "What is 5+3×2?", options: ["a": "11", "b": "16", "c": "13", "d": "10"], correctAnswer: "a"),
        Question(question: "Solve for 𝑥:2x−5=7", options: ["a": "2", "b": "6", "c": "7", "d": "4"], correctAnswer: "b"),
        Question(question: "What is 15% of 200?", options: ["a": "25", "b": "60", "c": "20", "d": "30"], correctAnswer: "d"),
        Question(question: "If a triangle has angles of 40∘ and 60∘, what is the measure of the third angle?", options: ["a": "80", "b": "60", "c": "90", "d": "70"], correctAnswer: "a"),
        Question(question: "What is 12−(5+3)?", options: ["a": "2", "b": "6", "c": "4", "d": "8"], correctAnswer: "c"),
        Question(question: "If 3x + 5 = 14, what is the value of x?", options: ["a": "3", "b": "6", "c": "4", "d": "2"], correctAnswer: "a"),
        Question(question: "What is the square root of 81?", options: ["a": "3", "b": "6", "c": "9", "d": "12"], correctAnswer: "c"),
        Question(question: "A rectangle has a length of 10 and a width of 5. What is its area?", options: ["a": "15", "b": "5", "c": "50", "d": "25"], correctAnswer: "c"),
        Question(question: "What is 20% of 150?", options: ["a": "35", "b": "30", "c": "50", "d": "25"], correctAnswer: "b"),
        Question(question: "Solve: 18/3+5", options: ["a": "11", "b": "10", "c": "9", "d": "8"], correctAnswer: "a"),
        Question(question: "Solve: 2(3+4)", options: ["a": "13", "b": "14", "c": "12", "d": "11"], correctAnswer: "b"),
        Question(question: "Solve for x: 5x-7=18", options: ["a": "7", "b": "6", "c": "4", "d": "5"], correctAnswer: "d"),
        Question(question: "What is 15% of 300?", options: ["a": "35", "b": "30", "c": "45", "d": "25"], correctAnswer: "c"),
        Question(question: "What is the value of 64-8?", options: ["a": "48", "b": "30", "c": "45", "d": "56"], correctAnswer: "d"),
        Question(question: "Solve for x: 6x+4=28", options: ["a": "4", "b": "6", "c": "8", "d": "5"], correctAnswer: "a"),
        Question(question: "Simplify: (5+3)×2", options: ["a": "14", "b": "16", "c": "18", "d": "20"], correctAnswer: "b"),
        Question(question: "Solve for x: 12-4x=0", options: ["a": "3", "b": "-4", "c": "-8", "d": "-3"], correctAnswer: "a"),
        Question(question: "What is the square of 11?", options: ["a": "111", "b": "121", "c": "144", "d": "131"], correctAnswer: "b"),
        Question(question: "Solve for x: 3x-2=4", options: ["a": "3", "b": "2", "c": "1", "d": "0"], correctAnswer: "b"),
        Question(question: "What is 25% of 160?", options: ["a": "35", "b": "30", "c": "45", "d": "40"], correctAnswer: "d"),
        Question(question: "Simplify: 49-25", options: ["a": "14", "b": "36", "c": "24", "d": "20"], correctAnswer: "c"),
        Question(question: "Solve for x: 4x+6=18", options: ["a": "3", "b": "2", "c": "1", "d": "0"], correctAnswer: "a"),
        Question(question: "Solve : 18+6/2", options: ["a": "13", "b": "12", "c": "11", "d": "10"], correctAnswer: "b"),
        Question(question: "Solve for x: 9x-4=23", options: ["a": "3", "b": "2", "c": "1", "d": "0"], correctAnswer: "a"),
        Question(question: "What is 30% of 250?", options: ["a": "60", "b": "65", "c": "75", "d": "70"], correctAnswer: "c"),
        Question(question: "Simplify: 36-16", options: ["a": "14", "b": "36", "c": "24", "d": "20"], correctAnswer: "d"),
        Question(question: "Solve for x: 2x+5=19", options: ["a": "5", "b": "6", "c": "7", "d": "8"], correctAnswer: "c"),
        Question(question: "Simplify: 10+5×2", options: ["a": "20", "b": "30", "c": "15", "d": "10"], correctAnswer: "a"),
        Question(question: "Solve for x: 4x−2=14", options: ["a": "5", "b": "6", "c": "3", "d": "4"], correctAnswer: "d"),
        Question(question: "What is the square root of 121?", options: ["a": "12", "b": "10", "c": "11", "d": "14"], correctAnswer: "c"),
        Question(question: "Solve for x: 5x−10=15", options: ["a": "5", "b": "6", "c": "3", "d": "4"], correctAnswer: "a"),
        Question(question: "What is 12% of 400?", options: ["a": "60", "b": "42", "c": "48", "d": "50"], correctAnswer: "c"),
        Question(question: "Simplify: 14−(5+3)", options: ["a": "7", "b": "6", "c": "5", "d": "4"], correctAnswer: "b"),
        Question(question: "Solve for x: 3x+5=17", options: ["a": "5", "b": "6", "c": "3", "d": "4"], correctAnswer: "d"),
        Question(question: "Solve: 20−(6+4)", options: ["a": "10", "b": "12", "c": "13", "d": "14"], correctAnswer: "a"),
        Question(question: "What is the value of 64-36?", options: ["a": "20", "b": "30", "c": "28", "d": "36"], correctAnswer: "c"),
        Question(question: "Solve for x: 2x+7=21", options: ["a": "5", "b": "6", "c": "7", "d": "8"], correctAnswer: "c"),
        Question(question: "What is the value of 25-9?", options: ["a": "20", "b": "16", "c": "10", "d": "13"], correctAnswer: "b"),
        Question(question: "Solve for x: 3(x-2)=9", options: ["a": "3", "b": "2", "c": "4", "d": "5"], correctAnswer: "d"),
      ]

    @State private var currentQuestionIndex = 0
    @State private var player1Score = 0
    @State private var player2Score = 0
    @State private var round = 1

    @State private var player1Answer: String? = nil
    @State private var player2Answer: String? = nil
    @State private var isPlayer1Turn = true
    @State private var showAnswerFeedback = false
    @State private var gameOver = false
    @State private var scoreboard: [(round: Int, p1Correct: Int, p2Correct: Int, p1Time: Double, p2Time: Double,winnerPlayer:String)] = []
    
    @State private var startTime: Date? = nil
    @State private var player1Time: Double = 0
    @State private var player2Time: Double = 0
    @State private var showRoundSummary = false // New state to control summary modal

    
    @State private var elapsedTime: TimeInterval = 0
    @State private var timer: Timer? = nil
    var body: some View {
        VStack(spacing:30) {
            if gameOver {
                ScoreboardView(scoreboard: scoreboard, player1Score: player1Score, player2Score: player2Score, restartGame: restartGame)
            }
            else if showRoundSummary {
                RoundSummaryView(
                    round: round,
                    player1Correct: player1Answer == questions[currentQuestionIndex].correctAnswer,
                    player2Correct: player2Answer == questions[currentQuestionIndex].correctAnswer,
                    player1Time: player1Time,
                    player2Time: player2Time,
                    continueAction: {
                        showRoundSummary = false
                        nextRound()
                    }
                )
            }
            else {
                VStack(spacing:15){
                    Text("Round \(round)").font(.title)
                    Text(isPlayer1Turn ? "Player 1's Turn" : "Player 2's Turn").font(.headline).foregroundColor(Color.theme)
                    Text(formatTime(elapsedTime))
                        .font(.system(size: 30))
                        .foregroundColor(.red)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black.opacity(0.8)))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2))
                                    
                }
                VStack(spacing:20){
                    Text(questions[currentQuestionIndex].question)
                        .font(.headline)
                        .foregroundColor(.black) // Text color
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white) // Card-like background
                                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5) // Shadow only on box
                        )
                    
                    VStack {
                        let options = Array(questions[currentQuestionIndex].options.keys.sorted())
                        
                        HStack {
                            ForEach(options.prefix(2), id: \.self) { key in
                                AnswerButton(key: key, text: questions[currentQuestionIndex].options[key]!, action: {
                                    handleAnswerSelection(key: key)
                                }, isSelected: showAnswerFeedback, correctAnswer: questions[currentQuestionIndex].correctAnswer, userAnswer: isPlayer1Turn ? player1Answer : player2Answer)
                            }
                        }
                        
                        HStack {
                            ForEach(options.suffix(2), id: \.self) { key in
                                AnswerButton(key: key, text: questions[currentQuestionIndex].options[key]!, action: {
                                    handleAnswerSelection(key: key)
                                }, isSelected: showAnswerFeedback, correctAnswer: questions[currentQuestionIndex].correctAnswer, userAnswer: isPlayer1Turn ? player1Answer : player2Answer)
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .onAppear {
            startTime = Date()
            startTimer()
        }
    }

    func handleAnswerSelection(key: String) {
        if isPlayer1Turn {
            player1Answer = key
            player1Time = Double(elapsedTime)//elapsedTime
        } else {
            player2Answer = key
            player2Time = Double(elapsedTime)//elapsedTime
        }
        stopTimer()
        showAnswerFeedback = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            showAnswerFeedback = false
            if isPlayer1Turn {
                isPlayer1Turn = false
                startTime = Date()
                startTimer()
            } else {
                evaluateRound()
            }
        }
    }

    func evaluateRound() {
        let correctAnswer = questions[currentQuestionIndex].correctAnswer
        let player1Correct = player1Answer == correctAnswer ? 1 : 0
        let player2Correct = player2Answer == correctAnswer ? 1 : 0

        var winnerPlayer : String = ""
        // Bonus point for faster player if both are correct
        if player1Correct == 1 && player2Correct == 1 {
            if player1Time < player2Time {
                player1Score += 1
                winnerPlayer = "p1"
            } else if player2Time < player1Time {
                player2Score += 1 
                winnerPlayer = "p2"
            }
        }
        else{
            if player1Correct == 1
            {
                player1Score += 1
                winnerPlayer = "p1"
            }
            if player2Correct == 1 {
                player2Score += 1
                winnerPlayer = "p2"
            }
        }

        scoreboard.append((round: round, p1Correct: player1Correct, p2Correct: player2Correct, p1Time: player1Time, p2Time: player2Time,winnerPlayer:winnerPlayer))

        if player1Score == 3 || player2Score == 3 {
            gameOver = true
            stopTimer()
        } else {
//            nextRound()
            showRoundSummary = true
            stopTimer()
        }
    }

    func nextRound() {
        player1Answer = nil
        player2Answer = nil
        currentQuestionIndex = (currentQuestionIndex + 1) % questions.count
        isPlayer1Turn = true
        round += 1
        startTime = Date()
        player1Time = 0
        player2Time = 0
        startTimer()
    }

    func restartGame() {
        player1Score = 0
        player2Score = 0
        round = 1
        currentQuestionIndex = 0
        player1Answer = nil
        player2Answer = nil
        isPlayer1Turn = true
        showAnswerFeedback = false
        gameOver = false
        scoreboard = []
        startTime = Date()
        player1Time = 0
        player2Time = 0
        startTimer()
    }
    func startTimer() {
        timer?.invalidate()
        elapsedTime = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            elapsedTime += 0.01
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    func formatTime(_ time: TimeInterval) -> String {
            let minutes = Int(time) / 60
            let seconds = Int(time) % 60
            let milliseconds = Int((time * 100).truncatingRemainder(dividingBy: 100))
            return String(format: "%02d:%02d:%02d", minutes, seconds, milliseconds)
        }
}
struct AnswerButton: View {
    let key: String
    let text: String
    let action: () -> Void
    let isSelected: Bool
    let correctAnswer: String
    let userAnswer: String?

    var body: some View {
        Button(action: action) {
            Text("\(key)) \(text)")
                .padding()
                .frame(maxWidth: .infinity)
                .background(getButtonColor())
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .buttonStyle(BorderlessButtonStyle())
        .disabled(isSelected)
    }

    private func getButtonColor() -> Color {
        guard isSelected else { return Color.theme }

        if userAnswer == key {
            return key == correctAnswer ? Color.green : Color.red
        }
        return Color.theme
    }
}
//
//#Preview {
//    GameScreen()
//}
