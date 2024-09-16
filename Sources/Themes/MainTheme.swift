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
                    Link("PDF CV⬇︎", target: "https://luke000h.github.io/docs/LukeHester.pdf")
                        }
                        .background(.black)
                        .navigationBarStyle(.dark)
                        .margin(.bottom, .large)
                page.body
            }
        }
    }
}
