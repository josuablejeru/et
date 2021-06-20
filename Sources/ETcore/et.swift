import Foundation
import Files
import Vision

@available(macOS 10.13, *)
public final class ETcore{
    private let arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) { 
        self.arguments = arguments
    }

    public func run() throws {
        // Get the image from argument and create a UIImage
        let file = try Files.File.init(path: arguments[1]).read()
        guard let image = UIImage(data: file)?.cgImage else { return }
        
        // create and perform a request for getting the text
        let imageRequestHandler = VNImageRequestHandler(cgImage: image)
        if #available(macOS 10.15, *) {
            let request = VNRecognizeTextRequest(completionHandler: recognizeTextRequestHandler)
            do {
                // Perform the text-recognition request.
                try imageRequestHandler.perform([request])
            } catch {
                print("Unable to perform the requests: \(error).")
            }
        } else {
            // Fallback on earlier versions
        }
    }
}


