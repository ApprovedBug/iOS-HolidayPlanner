//
//  HomeView.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack {
            List(viewModel.holidays) { holiday in
                HolidayItemView(viewModel: holiday)
            }
            NavigationLink(destination: AddHolidayView(viewModel: AddHolidayViewModel(context: viewModel.context))) {
                Text("Add holiday")
            }
        }
        .onAppear(perform: viewModel.fetchHolidays)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        let persistenceController = PreviewPersistenceController()
        let viewModel = HomeViewModel(context: persistenceController.container.viewContext)
        HomeView(viewModel: viewModel)
    }
}


