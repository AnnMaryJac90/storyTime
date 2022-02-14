//
//  storyBrain.swift
//  storyTime
//
//  Created by Anil Thomas on 11/15/21.
//

import Foundation
struct storyBrain {
    
    var partNumber = 0
    
var story = [StoryInfo(
    title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
    choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
    choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
),
               StoryInfo(
    title: "He nods slowly, unfazed by the question.",
    choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
    choice2: "Wait, I know how to change a tire.", choice2Destination: 3
),
               StoryInfo(
    title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
    choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
    choice2: "It's him or or me! You take the knife and stab him.", choice2Destination: 4
),
               StoryInfo(
    title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
choice1: "The End", choice1Destination: 10,
    choice2: "Start Over", choice2Destination: 0
),
               StoryInfo(
    title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
    choice1: "The End ", choice1Destination: 10,
    choice2: "start over", choice2Destination: 0
),
               StoryInfo(
    title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
    choice1: "The End", choice1Destination: 10,
    choice2: "start over", choice2Destination: 0
)]
    
    
    func updateStoryLine() -> String{
        if partNumber != 10 {
        return story[partNumber].title
    }
        return "Story over"
    }
    
    mutating func updateChoice() -> Array<String>{
        if partNumber != 10{
        return [story[partNumber].choice1,story[partNumber].choice2]
        }
        else{
          //  partNumber = 0
            return ["start over"," "]
           
        }
    }
    
   mutating func optionDecode(choiceSelected : Int)
    { if partNumber != 10 {
        if choiceSelected == 1
        {
            partNumber = story[partNumber].choice1Destination
        }
        else {
            partNumber = story[partNumber].choice2Destination
        }
    }
        
    
    else
    {
        partNumber = 0
    }
    }
    
    
}
