//
//  HolidayMO.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import CoreData

@objc(HolidayMO)
final public class HolidayMO: NSManagedObject {
    @NSManaged var stayName: String
    @NSManaged var stayLength: Int32
}

extension HolidayMO {
    
    static var all: NSFetchRequest<HolidayMO> {
        let request = HolidayMO.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: "stayName", ascending: true)]
        return request as! NSFetchRequest<HolidayMO>
    }
}
