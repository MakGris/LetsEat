//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by Maksim Grischenko on 25.06.2024.
//

import Foundation

class ExploreDataManager {
    
    private var exploreItems: [ExploreItem] = []
    
    func fetch() {
        for data in loadData() {
            exploreItems.append(ExploreItem(dict: data))
        }
    }
    
    private func loadData()-> [[String:String]] {
        let decoder = PropertyListDecoder()
        if let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"),
           let exploreData = FileManager.default.contents(atPath: path),
           let exploreItems = try? decoder.decode([[String: String]].self, from: exploreData) {
            return exploreItems
        }
        return [[:]]
    }
}
