import Foundation
import Ignite

struct Home: StaticPage {
    
    var title = "Home"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Include("styles.html")
        Section {
            Image("/images/me.jpg", description: "Me climbing a boulder")
                .resizable()
                .class("roundedCorners")
                .class("dropShadow")
                .width(4)
            Card {
                let about = context.content(tagged: "about")[0]
                Text(markdown: about.body)
            } header: {
                Text("About").font(.title2)
            }
            .width(8)
        }
        
        Card {
            List {
                for award in context.content(ofType: "Awards") {
                    Text(award.body)
                }
            }
            .listStyle(.custom("🏆"))
        } header: {
            Text("Awards").font(.title2)
        }
        
        Spacer(size: .medium)
        Card {
            Text("As a former Army Physical Training Instructor and a love of iOS development, two passions collided with the release of an interval timer app thats intuitive to use and visually striking.")
             Text("The app uses Model-View-ViewModel (MVVM) pattern in a mainly object oriented fashion but protocol oriented programming (POP) techniques are also utilised to produce some of the interfaces.")
        } header: {
            Section {
                Image(decorative: "/images/segmentTimer.png")
                    .class("roundedCorners icon")
                Text("Segment Workout Timer")
                    .font(.title2)
                    .width(9)
            }
        }
        Spacer(size: .medium)
        Divider()
        for qual in context.content(ofType: "Qualifications").sorted(by: { $0.date > $1.date }) {
            
            if let image = qual.image {
                Image("https://luke000h.github.io/images/badges/\(image)")
                    .class("icon")
            }
        }
        Spacer(size: .medium)
        Text {
            Link("Skills & Qualifications", target: Skills())
                .linkStyle(.button)
                .role(.light)
        }
        .horizontalAlignment(.center)
        Spacer(size: .medium)
    }
}
