//
//  ContentView.swift
//  Shared
//
//  Created by Paul Olivier on 16/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @Binding var contactList: ContactList
    
    var body: some View {
            HStack{
                TextField("Contact name", text: $name).autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding()
                Button("Valider") {
                    let newContact = Contact(name: name, date: Date())
                    //Add contact to list
                    contactList.addContact(contact: newContact);
                    
                    name = ""
                    
                    print(contactList.contacts)
                    
                }.foregroundColor(name.isEmpty ? .red : .green)
            }.padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
