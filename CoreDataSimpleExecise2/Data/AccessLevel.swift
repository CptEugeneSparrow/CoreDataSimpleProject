//
//  AccessLevel.swift
//  CoreDataSimpleExecise2
//
//  Created by newowner   on 11.10.2024.
//

import Foundation

enum AccessLevel: String {
    case user = "User"
    case moderator = "Moderator"
    case support = "Support"
    case admin = "Admin"
    case superAdmin = "SuperAdmin"

    static func from(_ string: String) -> AccessLevel {
        return AccessLevel(rawValue: string) ?? .user
    }
}
