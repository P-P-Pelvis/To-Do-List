//
//  AddItemView.swift
//  To-Do List
//
//  Created by Edwin Tovar on 1/26/26.
//

import SwiftUI

struct AddItemView: View {
    @Environment(ToDoList.self) var toDoList
    @Environment(\.presentationMode) var presentationMode
    static let priorities = ["High", "Medium", "Low"]
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    var body: some View {
        NavigationView {
            Form {
                Picker("Priority", selection: $priority) {
                    ForEach(Self.priorities, id: \.self) { priority in
                        Text(priority)
                    }
                }
             }
        }
    }
}

#Preview {
    AddItemView()
}

