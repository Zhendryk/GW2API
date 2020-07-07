//
//  Quest.swift
//  GW2API
//
//  Created by Jonathan Bailey on 6/22/20.
//

public struct Quest: Decodable, Identifiable {
    public let id: Int
    public let name: String
    public let level: Int
    public let story: String
    public let goals: [QuestGoal]

    public struct QuestGoal: Decodable {
        public let active: String
        public let complete: String
    }
}
