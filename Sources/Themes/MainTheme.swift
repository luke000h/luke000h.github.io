import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                NavigationBar(logo: "Luke Hester") {
                            Link("Career", target: Career())
                            Link("Skills", target: Skills())
                        }
                        .background(.black)
                        .navigationBarStyle(.dark)
                        .margin(.bottom, .large)
                page.body
            }
        }
    }
}
