//
//  Response.swift
//  Magic8Ball
//
//  Created by Justin Hui on 6/11/2023.
//

import Foundation

struct Response: Identifiable {
    let id = UUID()
    let userQuestion: String
    let generatedResponse: String
}
