//
//  Quest.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct Quest: Decodable {
    let id: Int
    let name: String
    let level: Int
    let story: String
    let goals: [QuestGoal]

    public struct QuestGoal: Decodable {
        let active: String
        let complete: String
    }
}
