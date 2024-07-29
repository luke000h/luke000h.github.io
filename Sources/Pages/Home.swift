import Foundation
import Ignite

struct Home: StaticPage {
    
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        
        Card {
            """
            Luke has more than 9 years of experience in the military and 2 years as a Product Test Engineer. He has expertise in testing and software development including test scripting, mobile app development with an app published to the iOS App Store, C development with a focus on hardware and implementing operational technology solutions using MS Power Platform. In 2023 he won the Royal Logistics Corps Foundation Junior Initiate Award for operational process improvements in the delivery of over 320 military deployments.
            """
        } header: {
            "Personal overview"
        }
        Spacer(size: .medium)
        Card {
            Table {
                Row {
                    "SAFe 6 DevOps"
                    ""
                    "In progress"
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
