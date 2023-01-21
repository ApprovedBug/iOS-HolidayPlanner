//
//  AddHolidayViewModel.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import CoreData
import Foundation

class AddHolidayViewModel: ObservableObject {
    
    @Published var stayName: String = ""
    @Published var stayLength: String = ""
    
    private let context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func saveHoliday() {
        
        guard let stayLengthAsInteger = Int32(stayLength) else {
            return
        }
        
        let holiday = HolidayMO(context: context)
        holiday.stayName = stayName
        holiday.stayLength = stayLengthAsInteger
    }
}
