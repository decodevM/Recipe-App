//
//  AddRecipe.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct AddRecipe: View {
    @State private var name: String = ""
    @State private var category: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    @Environment (\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            Form{
                Section("Name"){
                    TextField("Recipe Name", text: $name)
                }
                Section("Category"){
                    Picker("Category", selection: $category) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                }
                Section("Description"){
                    TextEditor(text: $description)
                }
                Section("Ingredients"){
                    TextEditor(text: $ingredients)
                }
                Section("Directions"){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button {
                        print("Close")
                        dismiss()
                    } label: {
                        Label("Close",systemImage: "xmark")
                            .labelStyle(.titleAndIcon)
                            .foregroundColor(.red)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        print("Submit")
                    } label: {
                        Label("Add",systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                      
                    }
                }
            })
            .navigationTitle("Add new recipe")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct AddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
    }
}
