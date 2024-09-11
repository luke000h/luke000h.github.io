//
//  File.swift
//  
//
//  Created by Luke Hester on 29/07/2024.
//
import Ignite
import Foundation

struct Career: StaticPage {
    
    var title = "Career"
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Text("Career")
            .font(.title1)
        
        for content in context.content(ofType: "Roles").sorted(by: { $0.date > $1.date }) {
            
            let role = content.metadata["role"] ?? ""
            let organisation = content.metadata["org"] ?? ""
            
            Card() {
                Text(content.body)
            }  header: {
                Section {
                    Text("\(content.date.formatted(Date.FormatStyle().year().month(.abbreviated))) - \(content.metadata["to"] ?? "")")
                        .foregroundStyle(.steelBlue)
                        .horizontalAlignment(.leading)
                    Text {
                        for tag in content.tags {
                            Badge(tag)
                                .role(.primary)
                            " "
                        }
                    }
                    .horizontalAlignment(.trailing)
                }
                Section {
                    Text(role as! InlineElement)
                        .fontWeight(.bold)
                        .horizontalAlignment(.leading)
                    Text(organisation as! InlineElement)
                        .horizontalAlignment(.trailing)
                }
            }
            .margin(.bottom)
        }
        
    }
}
