//
//  File.swift
//  
//
//  Created by Luke Hester on 29/07/2024.
//

import Foundation
import Ignite

struct Skills: StaticPage {
    
    var title = "Skills & Qualifications"

    func body(context: PublishingContext) -> [BlockElement] {
        
        Card {
            for qual in context.content(ofType: "Qualifications").sorted(by: { $0.date > $1.date }) {
                Section {
                    if let image = qual.image {
                        Image(image)
                            .frame(width:100)
                    }
                    if let qualName = qual.metadata["qualification"] {
                        Text("\(qualName)")
                    }
                }
            }
        } header: {
            Text("Qualifications")
        }
    }
}

