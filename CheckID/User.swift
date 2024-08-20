//
//  User.swift
//  CheckID
//
//  Created by Satoshi Nishizuka on 2023/10/22.
//

import CoreData

public class User: NSManagedObject {
    
    @NSManaged public var name: String
    @NSManaged public var id: String
    @NSManaged public var fileId: String
    
    @nonobjc
    public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }
}

extension User: Identifiable{}
