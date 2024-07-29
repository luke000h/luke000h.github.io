//
//  File.swift
//  
//
//  Created by Luke Hester on 29/07/2024.
//

import Foundation
import Ignite

struct Skills: StaticPage {
    
    var title = "Skills"

    func body(context: PublishingContext) -> [BlockElement] {
        
        Text("Skills")
            .font(.title1)
    }
}

