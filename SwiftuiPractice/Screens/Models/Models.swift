//
//  Models.swift
//  SwiftuiPractice
//
//  Created by Web and App on 04/01/2024.
//

import Foundation
import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct Notification: Identifiable {
    var id = UUID()
    var title: String
    var fromPerson: Person
}
