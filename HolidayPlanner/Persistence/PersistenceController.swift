//
//  PersistenceController.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import CoreData

class PersistenceController: PersistenceControlling {
    var container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "HolidayPlanner")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
