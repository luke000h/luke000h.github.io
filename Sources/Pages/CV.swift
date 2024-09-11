//
//  File.swift
//  
//
//  Created by Luke Hester on 11/09/2024.
//

import Foundation
import Ignite

struct CV: StaticPage {
    
    var title = "Skills"

    func body(context: PublishingContext) -> [BlockElement] {
        Include("styles.html")
        Section {
            Text("Luke Hester")
                .font(.title1)
            
        }
        .class("A4Page")
    }
}

