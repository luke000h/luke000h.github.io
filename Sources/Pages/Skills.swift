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
        Include("styles.html")
        Card {
            for qual in context.content(ofType: "Qualifications").sorted(by: { $0.date > $1.date }) {
                Section {
                    if let image = qual.image {
                        Image("https://luke000h.github.io/images/badges/\(image)")
                            .class("icon")
                            .width(2)
                    }
                    Group {
                        if let qualName = qual.metadata["qualification"],
                           let linkToCert = qual.metadata["cert"],
                           let institute = qual.metadata["institute"] {
                            
                            Text {
                                Link("\(qualName)", target: "\(linkToCert)")
                            }
                            .fontWeight(.bold)
                            Text("\(Text(qual.date.formatted(.dateTime.year()))) - \(institute)")
                                
                        }
                    }
                    .width(10)
                }
            }
        } header: {
            Text("Certifications")
        }
    }
}

