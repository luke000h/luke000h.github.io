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
                        Image("https://luke000h.github.io/images/badges/\(image)")
                            .frame(width:100)
                            .width(1)
                    }
                        
                    if let qualName = qual.metadata["qualification"],
                    let linkToCert = qual.metadata["cert"] {
                        Text {
                            Link("\(qualName)", target: "\(linkToCert)")
                        }
                    }
                }
            }
        } header: {
            Text("Qualifications")
        }
    }
}

