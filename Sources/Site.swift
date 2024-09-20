import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = CVSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct CVSite: Site {
    var url: URL = URL(string: "https://luke000h.github.io")!
    var name = "Luke Hester"
    var titleSuffix = " - Luke Hester"
    
    var builtInIconsEnabled = true

    var author = "Luke Hester"

    var homePage = Home()
    var theme = MyTheme()
    
    var pages: [any StaticPage] {
        Career()
        Skills()
    }
}

