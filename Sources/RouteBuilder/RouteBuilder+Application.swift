
import Vapor

public extension Application {
    func get(@RouteBuilder _ routes: () -> [any VaporRoute]) {
        routes().forEach {
            get($0)
        }
    }
}
