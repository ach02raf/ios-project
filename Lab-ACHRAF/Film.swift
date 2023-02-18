//
//  Film.swift
//  Lab-ACHRAF
//
//  Created by Tekup University 7 on 18/2/2023.
//

import Foundation
class Film: Decodable {
        let title : String
    
        let  episode :  Int

        let openingCrawl : String

        let director : String

        let producer : String

        let releaseDate : String
    
    enum CodingKeys : String ,CodingKey {
        case episode = "episode_id"
        case director
        case openingCrawl = "opening_crawl"
        case title
        case producer
        case releaseDate = "release_date"
        
    }
        
    init(title: String, episode: Int, openingCrawl: String, director: String, producer: String, releaseDate: String) {
        self.title = title
        self.episode = episode
        self.openingCrawl = openingCrawl
        self.director = director
        self.producer = producer
        self.releaseDate = releaseDate
    }
}
