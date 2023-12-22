//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

/// view model for single to do list item view (each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone) // updating existing data
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
