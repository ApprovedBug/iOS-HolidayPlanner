//
//  PreviewPersistenceController.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import CoreData

class PreviewPersistenceController: PersistenceControlling {
    
    var container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "HolidayPlanner")
        container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
