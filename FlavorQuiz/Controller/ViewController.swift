//
//  ViewController.swift
//  FlavorQuiz
//
//  Created by Mimi Tu on 3/9/19.
//  Copyright © 2019 Mimi Tu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Create the question object
    let questions = allQuestions()
    
    //The status of progress
    var questionNumber = 0
    
    //Which answer the use picked
    var pickedAnswer = false
    
    //Keep track of scores
    var currentScore = 0
    
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
        
        //define which answer the user picked
        if sender.tag == 1 {
            
            pickedAnswer = true
            
        } else if sender.tag == 2 {
            
            pickedAnswer = false
        }
        
        checkAnswer()
        
        //update the status of progress
        questionNumber = questionNumber + 1
        
        nextQuestion()
        
    }
    
    @IBOutlet weak var progressStatus: UILabel!
    
   
    @IBOutlet weak var progressView: UIProgressView!
    
    
    @IBOutlet weak var score: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
        
        updateUI()
    }
    
    func nextQuestion(){
        
        //present next question
        if questionNumber <= 14 {
            
            questionText.text = questions.questionsList[questionNumber].text
            
            updateUI()
            
        } else {
            
            let alert = UIAlertController(title: "You have Finished!", message: "Would you like to start over?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            }))
            
            present(alert, animated: true, completion: nil)
    
        }
    }
    
    func checkAnswer(){
        
        let correctAnswer = questions.questionsList[questionNumber].answer
        
        if pickedAnswer == correctAnswer {
            
            currentScore += 1
            
            self.noticeSuccess("Correct!")
            
        } else {
            self.noticeError("Wrong!")
        }
    }
    
    func updateUI(){
        
        score.text = "Score: \(currentScore)"
        
        progressStatus.text = "\(questionNumber+1) / 15"
        
        self.progressView.progress += 1.0/16
        
    }
    
    
    func startOver(){
        
        questionNumber = 0
        
        currentScore = 0
        
        self.progressView.progress = 0
        
        nextQuestion()
        
    }
    
    
}

