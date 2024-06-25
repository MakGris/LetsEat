//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Maksim Grischenko on 25.06.2024.
//

import Foundation

struct ExploreItem {
    let name: String?
    let image: String?
}

extension ExploreItem {
    init(dict: [String: String]) {
        self.name = dict["name"]
        self.image = dict["image"]
    }
}
