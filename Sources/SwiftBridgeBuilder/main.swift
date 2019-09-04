import SwiftSyntax
import Foundation

print("Hello, world!")

let str = """
          public enum ParserError: Error, CustomStringConvertible {
            /// Parser created an invalid syntax data. That should never occur under
            /// normal circumstances, and it should be reported as a bug.
            case invalidSyntaxData

            /// The SwiftSyntax parser library isn't compatible with this client
            case parserCompatibilityCheckFailed

            public var description: String {
              switch self {
              case .invalidSyntaxData:
                return "parser created invalid syntax data"
              case .parserCompatibilityCheckFailed:
                return "SwiftSyntax parser library isn't compatible"
              }
            }
          }
          """

let file = CommandLine.arguments[1]
let url = URL(fileURLWithPath: file)
let sourceFile = try SyntaxTreeParser.parse(url)

NSLog("Node: \(sourceFile)")
