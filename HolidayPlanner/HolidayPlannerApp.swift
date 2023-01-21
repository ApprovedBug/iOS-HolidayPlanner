//
//  HolidayPlannerApp.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import SwiftUI

@main
struct HolidayPlannerApp: App {
    let persistenceController = PersistenceController()

    var body: some Scene {
        WindowGroup {
            let viewModel = HomeViewModel(context: persistenceController.container.viewContext)
            HomeView(viewModel: viewModel)
        }
    }
}
