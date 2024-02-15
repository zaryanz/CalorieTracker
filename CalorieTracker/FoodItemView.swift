//
//  FoodItemView.swift
//  CalorieTracker
//
//  Created by Aryan Singh on 15/02/24.
//

import SwiftUI

struct FoodItemView: View {
    var name: String
    var calories: String
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Text("\(calories)kcal")
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView(name: "Burger", calories: "120")
    }
}
