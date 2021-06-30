//
//  User+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by Rahul Mane on 17/07/18.
//  Copyright © 2018 developer. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var lastname: String?

}
