import Foundation
import AppKit
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
    var name = "Luke Hester"
    var titleSuffix = " - Luke Hester"
    var url = URL("https://luke000h.github.io")
    var builtInIconsEnabled = true

    var author = "Luke Hester"

    var homePage = Home()
    var theme = MyTheme()
    
    var pages: [any StaticPage] {
        Career()
    }
}

