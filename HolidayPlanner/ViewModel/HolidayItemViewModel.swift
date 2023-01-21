//
//  HolidayItemViewModel.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import Foundation

class HolidayItemViewModel: Identifiable, ObservableObject {
    
    private let holiday: HolidayMO
    
    init(holiday: HolidayMO) {
        self.holiday = holiday
    }
    
    var stayName: String {
        holiday.stayName
    }
    
    var stayLength: String {
        String(holiday.stayLength)
    }
}
