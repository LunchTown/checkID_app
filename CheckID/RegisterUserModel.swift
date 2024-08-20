//
//  RegisterUserModel.swift
//  CheckID
//
//  Created by Satoshi Nishizuka on 2023/10/23.
//

import CoreData

struct RegisterUserModel {
    
    func fetchUser(for objectId: NSManagedObjectID, context: NSManagedObjectContext) -> User? {
        guard let user = context.object(with: objectId) as? User else {
            return nil
        }
        return user
    }
    
    func RegisterUser(userId: NSManagedObjectID?, with userValues: UserValues, in context: NSManagedObjectContext) {
        let user: User
        if let objectId = userId,
           let fetchUser = fetchUser(for: objectId, context: context) {
            user = fetchUser
        } else {
            user = User(context: context)
        }
        user.name = userValues.name
        user.id = userValues.id
        user.fileId = userValues.fileId
        
        do {
            try context.save()
        } catch {
            print("Register error: \(error)")
        }
    }
}
