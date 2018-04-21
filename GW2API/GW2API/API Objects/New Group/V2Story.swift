//
//  V2Story.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2Story {
    let stories = V2Stories(type: "stories")
    let backstory = V2Backstory()
    
    class V2Backstory {
        let answers = V2BackstoryAnswers(type: "backstory/answers")
        let questions = V2BackstoryQuestions(type: "backstory/questions")
        
        class V2BackstoryAnswers: APIV2Object {
            
        }
        
        class V2BackstoryQuestions: APIV2Object {
            
        }
    }
    
    class V2Stories: APIV2Object {
        let seasons = V2StoriesSeasons(type: "stories/seasons")
        
        class V2StoriesSeasons: APIV2Object {
            
        }
    }
}
