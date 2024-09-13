import Foundation
import Ignite

struct Home: StaticPage {
    
    var title = "Home"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Include("styles.html")
        Section {
            Image("me.jpg", description: "Me climbing a boulder")
                .resizable()
                .class("roundedCorners")
                .class("dropShadow")
                .width(4)
            Card {
                let about = context.content(tagged: "about")[0]
                Text(about.body)
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
                Image(decorative: "segmentTimer.png")
                    .frame(width: 60, height: 60)
                    .class("roundedCorners")
                Text("Segment Workout Timer")
                    .font(.title2)
            }
        }
        Spacer(size: .medium)
        Card {
            Table {
                Row {
                    "SAFe 6 DevOps"
                    "Intermediate"
                    "August 2024"
                }
                Row {
                    "Project management"
                    "Level 3"
                    "July 2024"
                }
                Row {
                    "AWS Cloud"
                    "Practitioner"
                    "June 2024"
                }
                Row {
                    "ISTQB Tester"
                    "Foundation"
                    "May 2024"
                }
                Row {
                    "Harvard CS50x Intro Computer Science"
                    "Certificate"
                    "March 2024"
                }
                Row {
                    "Maths A level"
                    "A"
                    "March 2008"
                }
                Row {
                    "Physics A level"
                    "B"
                    "March 2008"
                }
                Row {
                    "Chemistry A level"
                    "B"
                    "March 2008"
                }
            } header: {
                "Qualification"
                "Grade/Level"
                "Completed"
            }
        } header: {
            "Qualifications"
        }
    }
}
