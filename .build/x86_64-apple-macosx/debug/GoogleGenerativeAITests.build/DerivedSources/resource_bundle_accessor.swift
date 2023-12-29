import class Foundation.Bundle

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("generative-ai-swift_GoogleGenerativeAITests.bundle").path
        let buildPath = "/Users/ryanashton/Documents/Vapor Projects/well-spotted-backend/generative-ai-swift/.build/x86_64-apple-macosx/debug/generative-ai-swift_GoogleGenerativeAITests.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}