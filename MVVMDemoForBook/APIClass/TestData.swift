//
//  TestData.swift
//  GenericDemoForEvent
//
//  Created by Knoxpo MacBook Pro on 01/04/21.
//

import Foundation
struct TestData {
    
   // static let events: [Event] = readFile(named: "Events") as! [Event]
   // static let particiapant: [Person] = readFile(named: "Participants") as! [Person]
    
    static let events: [Event] = readFile(named: "Events")
    static let particiapant: [Person] = readFile(named: "Participants")
    
    static func readFile<ModelType: Decodable>(named name:String) -> [ModelType] {
      let url = Bundle.main.url(forResource: name, withExtension: "json")!
      let data = try! Data(contentsOf: url)
      let decoder = JSONDecoder()
     decoder.dateDecodingStrategy = .secondsSince1970
     return try! decoder.decode([ModelType].self, from: data)
     
    
    
    
//
//
//    static func LoadEvent() -> [Event]
//    {
//        let url = Bundle.main.url(forResource: "Events", withExtension: "json")!
//        let data = try! Data(contentsOf: url)
//        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .secondsSince1970
//        return try! decoder.decode([Event].self, from: data)
//
//
//    }
//
//    static func loadParticipaint() -> [Person]
//    {
//        let url = Bundle.main.url(forResource: "Participants", withExtension: "json")!
//        let data = try! Data(contentsOf: url)
//        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .secondsSince1970
//        return try! decoder.decode([Person].self, from: data)
//
//
//
//
//
//
//    }
    
       
       }
    
    
    
    
    
    
    
    
    
}
