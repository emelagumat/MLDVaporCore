
import Vapor

@resultBuilder
public struct RouteBuilder {
//    public init() {}
    
    public static func buildBlock(_ components: any VaporRoute...) -> [any VaporRoute] {
        return components
    }
}

public extension Application {
    @discardableResult
    @preconcurrency
    func get<T: VaporRoute>(_ route: T) -> Route {
        self.get(.constant(route.path), use: { request async throws -> View in
            return try await route.buildPage(app: self, request: request)
        })
    }
    func get(@RouteBuilder _ routes: () -> [any VaporRoute]) {
        routes().forEach {
            self.get($0)
        }
    }
}
