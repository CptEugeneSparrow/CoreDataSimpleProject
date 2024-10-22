//
//  UserStatus.swift
//  CoreDataSimpleExecise2
//
//  Created by newowner   on 11.10.2024.
//

import Foundation

enum UserStatus: String {
    case active = "active"
    case tempBlock = "temp_block"
    case permBlock = "perm_block"
    case deleted = "deleted"

    static func from(_ string: String) -> UserStatus {
        return UserStatus(rawValue: string) ?? .active
    }
}


//import CoreData
//import Foundation
//
//@objc(Student)
//class Student: NSManagedObject {
//    @NSManaged var id: UUID
//    @NSManaged var name: String
//    @NSManaged var accessLevel: String
//    @NSManaged var status: String
//}
