//
//  ViewController.swift
//  StartQuizAppMVC
//
//  Created by Mohamed on 11/26/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let quiz = Questions()
    
   //MARK:- Outlets
    
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        setupQuestion()
      
    }

    
    
    func setupQuestion(){
        
        
        let currentQuestion = quiz.getQuestionIndex()
        
        questionImage.image = currentQuestion.image
        
        questionLabel.text = currentQuestion.question
        
    }
    
    
    //MARK:- IBActions
    
    
    @IBAction func btn_true(_ sender: UIButton) {
        
       
        
    }
    
    
    @IBAction func btn_false(_ sender: UIButton) {
        
        
    }
    
}

