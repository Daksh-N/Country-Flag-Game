//
//  Data.swift
//  Country Flag Game
//
//  Created by Daksh Nakra on 1/20/23.
//

import Foundation

struct Data {
    let countries = ["Angola",
                     "Austria",
                     "Chad",
                     "China",
                     "England",
                     "Estonia",
                     "France",
                     "Germany",
                     "Greece",
                     "Iceland",
                     "India",
                     "Israel",
                     "Italy",
                     "Kazakhstan",
                     "Mongolia",
                     "Netherlands",
                     "Norway",
                     "Pakistan",
                     "Peru",
                     "Saudi Arabia",
                     "South Africa",
                     "Spain",
                     "Sweden",
                     "Ukraine",
                     "United States"]
    
    
    var questions = [Question(correctAnswer:
                                Answer(text: "England", isCorrect: true),
                              incorrectAnswers: [
                                Answer(text: "Ireland", isCorrect: false),
                                Answer(text: "Iceland", isCorrect: false),
                                Answer(text: "South Africa", isCorrect: false)
                              ])]
    init() {
        questions.remove(at: 0)
        
        for i in (0..<25) {
            questions.append(generateQuestion(Index: i))
        }
    }
    
    func generateQuestion(Index: Int) -> Question {
        let incorrectAnswerIndexes = generateIncorrectAnswerIndexes(correctAnswerIndex: Index)
        return Question(correctAnswer:
                            Answer(text: countries[Index], isCorrect: true),
                        incorrectAnswers: [
                            Answer(text: countries[incorrectAnswerIndexes[0]], isCorrect: false),
                            Answer(text: countries[incorrectAnswerIndexes[1]], isCorrect: false),
                            Answer(text: countries[incorrectAnswerIndexes[2]], isCorrect: false)
                        ])
    }
    
    func generateIncorrectAnswerIndexes(correctAnswerIndex: Int) -> [Int] {
        var result = [-4, -5, -6]
        var Index1 = -1
        var Index2 = -2
        var Index3 = -3
        Index1 = Int.random(in: 0..<25)
        Index2 = Int.random(in: 0..<25)
        Index3 = Int.random(in: 0..<25)
        while(Index1 == correctAnswerIndex || Index2 == correctAnswerIndex || Index3 == correctAnswerIndex || Index1 == Index2 || Index1 == Index3 || Index2 == Index3)
        {
            Index1 = Int.random(in: 0..<25)
            Index2 = Int.random(in: 0..<25)
            Index3 = Int.random(in: 0..<25)
        }
        
        result = [Index1, Index2, Index3]
        return result
    }
}
