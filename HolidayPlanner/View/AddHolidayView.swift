//
//  AddHolidayView.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import SwiftUI

struct AddHolidayView: View {
    
    @ObservedObject var viewModel: AddHolidayViewModel
    
    var body: some View {
        
        VStack(spacing: 12) {
            TextField("Destination", text: $viewModel.stayName)
            TextField("How long", text: $viewModel.stayLength)
            
            Button("Save") {
                viewModel.saveHoliday()
            }
        }
        .padding([.leading, .trailing], 12)
        .textFieldStyle(.roundedBorder)
    }
}

struct AddHolidayView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let persistenceController = PreviewPersistenceController()
        
        AddHolidayView(viewModel: AddHolidayViewModel(context: persistenceController.container.viewContext))
    }
}
