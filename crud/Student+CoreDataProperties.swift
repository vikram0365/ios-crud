//
//  Student+CoreDataProperties.swift
//  crud
//
//  Created by vikram jaiswal on 12/03/24.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var school: String?
    @NSManaged public var std: String?

}

extension Student : Identifiable {

}
