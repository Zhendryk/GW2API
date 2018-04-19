//
//  V2Story.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Story {
    public let stories = V2Stories(type: "stories")
    public let backstory = V2Backstory()
    
    public class V2Backstory {
        public let answers = V2BackstoryAnswers(type: "backstory/answers")
        public let questions = V2BackstoryQuestions(type: "backstory/questions")
        
        public class V2BackstoryAnswers: APIV2Object {
            
        }
        
        public class V2BackstoryQuestions: APIV2Object {
            
        }
    }
    
    public class V2Stories: APIV2Object {
        public let seasons = V2StoriesSeasons(type: "stories/seasons")
        
        public class V2StoriesSeasons: APIV2Object {
            
        }
    }
}
