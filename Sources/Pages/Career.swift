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
        
        for content in context.allContent.sorted(by: { $0.date > $1.date }) {
            
            Card() {
                Text(content.body)
            }  header: {
                Section {
                    Text("\(content.date.formatted(Date.FormatStyle().year().month(.abbreviated))) - \(content.lastModified.formatted(Date.FormatStyle().year().month(.abbreviated)))")
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
                    Text(content.title)
                        .fontWeight(.bold)
                        .horizontalAlignment(.leading)
                    Text(content.subtitle ?? "")
                        .horizontalAlignment(.trailing)
                }
            }
            .margin(.bottom)
        }
        
    }
}
