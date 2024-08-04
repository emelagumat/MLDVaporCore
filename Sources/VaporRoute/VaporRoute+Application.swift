
import Vapor

public extension Application {
    @discardableResult
    @preconcurrency 
    func get<T: VaporRoute>(_ route: T) -> Route {
        let path = route.path
        return get(.constant(route.path)) { request async throws -> View in
            try await route.buildPage(app: self, request: request)
        }
    }
}
