//
//  allQuestions.swift
//  FlavorQuiz
//
//  Created by Mimi Tu on 3/10/19.
//  Copyright © 2019 Mimi Tu. All rights reserved.
//

import Foundation

class allQuestions {
    
    var questionsList = [Questions]()
    
    init() {
        //Question 1:
        questionsList.append(Questions(question: "Every delicious bite people have ever tasted has been a result of Sweetness, Saltiness, Sourness, Bitterness and Umami coming together.", correctAnswer:true))
        
        //Question 2:
        questionsList.append(Questions(question: "Aroma is thought to be responsible for as much as 80 percent or more of flavor.", correctAnswer:true))
        
        //Question 3:
        questionsList.append(Questions(question: "People experience food only through our five physical senses.", correctAnswer:false))
        
        //Question 4:
        questionsList.append(Questions(question: "As long as you understand the essence of the ingredients, you will be a great cook.", correctAnswer:false))
        
        //Question 5:
        questionsList.append(Questions(question: "Cloves add richness to the flavor of lamb.", correctAnswer:true))
        
        //Question 6:
        questionsList.append(Questions(question: "The most commonly used techniques to prepare dried apricots are to poach and stew.", correctAnswer:true))
        
        //Question 7:
        questionsList.append(Questions(question: "When making asparagus soup, spices are not needed.", correctAnswer:false))
        
        //Question 8:
        questionsList.append(Questions(question: "Avocados pair very well with onions, especially with red ones.", correctAnswer:true))
        
        //Question 9:
        questionsList.append(Questions(question: "Nutmeg pairs very well with cheese, especially with Ricotta.", correctAnswer:true))
        
        //Question 10:
         questionsList.append(Questions(question: "Cabernet Sauvignon pairs well with lamb.", correctAnswer:true))
     
        //Question 11:
        questionsList.append(Questions(question: "Apples bring out the flavor of Champagne.", correctAnswer:false))
        
        //Question 12:
        questionsList.append(Questions(question: "Chocolate is commonly used in Mexican cuisine.", correctAnswer:true))
        
        //Question 13:
        questionsList.append(Questions(question: "Cilantro should be avoided in Japanese cuisine.", correctAnswer:true))
        
        //Question 14:
        questionsList.append(Questions(question: "Dessert wine should never be sweeter than the dessert it accompanies.", correctAnswer:false))
        
        //Question 15:
        questionsList.append(Questions(question: "Sweetness opens up the appetite, so start a meal on a sweet note.", correctAnswer:false))
        
    }
    
}
