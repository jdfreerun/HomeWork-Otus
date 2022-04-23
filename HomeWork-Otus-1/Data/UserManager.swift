//
//  UserManager.swift
//  HomeWork-Otus-1
//
//  Created by Albert Fayzullin on 20.04.2022.
//

import Foundation

class UserManager {
    static let shared = UserManager()
    
    lazy var data: [UsersItem] = {
        return [UsersItem(firstname: "Andrew", lastname: "Mittin", position: "Middle PHP Developer", location: "Moscow city, Mira 134"),
                UsersItem(firstname: "Anton", lastname: "Shipullin", position: "Fullstack Web Developer", location: "Kazan, pr. Podedy 22"),
                UsersItem(firstname: "Albert", lastname: "Fayzullin", position: "Project manager", location: "SPB, Plesetskaya 10")]
    }()
}
