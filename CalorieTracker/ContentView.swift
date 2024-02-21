//
//  ContentView.swift
//  CalorieTracker
//
//  Created by Aryan Singh on 15/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var foodItemsList = [
        FoodItem(name: "Burger", calories: "300"),
        FoodItem(name: "Guava", calories: "50")
    ]
    
    @State var isAddAlertPresented = false
    @State var name = ""
    @State var calories = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List(foodItemsList, id: \.self) { foodItem in
                    FoodItemView(name: foodItem.name, calories: foodItem.calories)
                }
                Button {
                    isAddAlertPresented.toggle()
                } label: {
                    Label("Add Item", systemImage: "plus")
                }
                    .alert("Enter Food Item", isPresented: $isAddAlertPresented) {
                    TextField("Food Name", text: $name)
                    TextField("Calories", text: $calories)
                    Button("OK", action: submit)
                    Button("Cancel", action: {
                        return
                    })
                }
            }.navigationTitle("Calorie Tracker")
        }
    }
    
    func submit() {
        if(name != "" && calories != "") {
            let newFoodItem = FoodItem(name: name, calories: calories)
            foodItemsList.append(newFoodItem)
        } else {
            return
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
