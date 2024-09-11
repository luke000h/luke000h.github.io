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
                .margin(20)
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
            Text("Achievements")
                .foregroundStyle(.white)
                .font(.title2)
            Text("- In 2023 he won the Royal Logistics Corps Foundation Junior Initiate Award for operational process improvements in the delivery of over 320 military deployments.")
                .foregroundStyle(.white)
            Text("- Winner of the best App award, presented by Apple in the Defence Hackathon 2022.")
            .foregroundStyle(.white)
        }
        .contentPosition(.overlay)
        .imageOpacity(0.5)
        Spacer(size: .medium)
        Card {
            Text("As a former Army Physical Training Instructor and a love of iOS development, two passions collided with the release of an interval timer app thats intuitive to use and visually striking.")
             Text("The app uses Model-View-ViewModel (MVVM) pattern in a mainly object oriented fashion but protocol oriented programming (POP) techniques are also utilised to produce some of the interfaces.")
        } header: {
            Image(decorative: "segmentTimer.png")
                .frame(maxWidth: 150)
            Spacer(size: .medium)
            Text("Segment Workout Timer")
                .font(.title2)
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
