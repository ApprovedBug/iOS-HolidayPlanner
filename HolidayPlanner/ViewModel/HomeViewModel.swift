//
//  HomeViewModel.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import CoreData
import SwiftUI

class HomeViewModel: NSObject, ObservableObject {
    
    @Published var holidays: [HolidayItemViewModel] = []
    
    private(set) var context: NSManagedObjectContext
    private let fetchedResultsController: NSFetchedResultsController<HolidayMO>
    
    init(context: NSManagedObjectContext) {
        self.context = context
        self.fetchedResultsController = NSFetchedResultsController(
            fetchRequest: HolidayMO.all,
            managedObjectContext: context,
            sectionNameKeyPath: nil,
            cacheName: nil
        )
        super.init()
        self.fetchedResultsController.delegate = self
    }
    
    func fetchHolidays() {
        do {
            try fetchedResultsController.performFetch()
            
            displayResults()
        } catch {
            print("There was an error fetching holidays - \(error.localizedDescription)")
        }
    }
    
    private func displayResults() {
        guard let results = fetchedResultsController.fetchedObjects else {
            return
        }
        
        holidays = results.map(HolidayItemViewModel.init)
    }
}

extension HomeViewModel: NSFetchedResultsControllerDelegate {
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        displayResults()
    }
}
