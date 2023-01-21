//
//  PersistenceControlling.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import CoreData

protocol PersistenceControlling {
    
    var container: NSPersistentContainer { get }
}
