//
//  UserChatModel.swift
//  TestProject
//
//  Created by ARMBP on 6/7/24.
//

import Foundation


struct UserChatModel: Decodable {
    let id: Int
    let image: String
    let name: String
    let onlineStatus: OnlineStatus
}


enum OnlineStatus: String, Codable {
    case online = "ONLINE"
    case offline  = "OFFLINE"
}
