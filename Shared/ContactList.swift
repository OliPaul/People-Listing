//
//  ContactList.swift
//  DemoSwiftUI
//
//  Created by Paul Olivier on 16/03/2021.
//

import Foundation

struct ContactList {
    var contacts: [Contact]
    
    mutating func addContact(contact: Contact){
        contacts.append(contact)
    }
    
    func getContacts() -> [Contact] {
        return contacts;
    }
}
