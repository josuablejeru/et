import ETcore
import Foundation

if #available(macOS 10.13, *) {
    let et = ETcore()
    do {
        try et.run()
    } catch {
        print("Can't process the Image: \(error)")
        exit(EXIT_FAILURE)
    }
} else {
    print("upgrade MacOs to use this program!")
}
