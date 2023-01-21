//
//  HolidayItemView.swift
//  HolidayPlanner
//
//  Created by Jack Moseley on 22/01/2023.
//

import SwiftUI

struct HolidayItemView: View {
    
    @ObservedObject var viewModel: HolidayItemViewModel
    
    var body: some View {
        
        VStack {
            Text(viewModel.stayName)
            Text(viewModel.stayLength)
        }
    }
}
