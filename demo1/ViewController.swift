//
//  ViewController.swift
//  demo1
//
//  Created by Utilisateur invité on 13/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var labelQuestion: UILabel!
    
    var currentquestionIndex = 0
    var questions = ["What is 7+7?", "What is the capital of France?", "From what is cognac made of?"]
    var answers = ["14", "Paris", "Grapes"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func ShowQuestion(_ sender: Any) {
        if  currentquestionIndex == 3 {
            currentquestionIndex = 0
        }
        let question = questions[currentquestionIndex]
        self.labelQuestion.text = question
        currentquestionIndex = currentquestionIndex + 1
        
    }
    
    @IBAction func ShowAnswer(_ sender: Any) {
        let answer = answers[currentquestionIndex - 1]
        self.labelAnswer.text = answer
        
    }
}

