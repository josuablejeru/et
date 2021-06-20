//
//  text.swift
//  
//
//  Created by Josua Blejeru on 20.06.21.
//

import Foundation
import Vision


@available(macOS 10.13, *)
func recognizeTextRequestHandler(request: VNRequest, error: Error?) {    
    if #available(macOS 10.15, *) {
        guard let observations =
                request.results as? [VNRecognizedTextObservation] else {
            return
        }
        let recognizedStrings = observations.compactMap { observation in
                // Return the string of the top VNRecognizedText instance.
                return observation.topCandidates(1).first?.string
            }
            
        // Process the recognized strings.
        print(recognizedStrings)

    } else {
        exit(EXIT_FAILURE)
    }
}
