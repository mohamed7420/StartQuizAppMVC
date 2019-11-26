//
//  Questions.swift
//  StartQuizAppMVC
//
//  Created by Mohamed on 11/26/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import Foundation
import UIKit

//MARK:- Question Model Data

struct QuizQuestions {
    
    var question: String
    
    var answer: Bool
    
    var image: UIImage
}


class Questions{
    
    
    private var score: Int = 0
    
    private var questionIndex: Int = 0
    
    // function that resturn all questions and answers
    
    private func questions()->[QuizQuestions]{
        
        let quizQuestion = [
            
            QuizQuestions(question: "is this a ball?", answer: false, image: UIImage(named: "img1")!)
            ,QuizQuestions(question: "is this a person", answer: true, image: UIImage(named: "img2")!)
            ,QuizQuestions(question: "is this a car?", answer: true, image: UIImage(named: "img3")!)]
        
        return quizQuestion
    }
    
    
    // MARK:- Function To get user score
    
    func getScore() -> String {
        
        
        return "\(score) \\ \(questions().count)"
    }
    
    //MARK:- Function To get question index
    
    func getQuestionIndex() -> QuizQuestions{
        
        
        return questions()[questionIndex]
    }
    
    func check(answer:Bool) -> Bool{
        
        let question = getQuestionIndex()
        
        if question.answer == answer {
            
            score += 1
            
            return true
        }
        
        return false
    }
    
    func nextQuestion()->Bool{
        
        questionIndex += 1
        
        if questionIndex > questions().count - 1{
            
            return false
            
        }
        
        return true
    }
    
    func reset(){
        
        questionIndex = 0
        score = 0
    }
    
 }
