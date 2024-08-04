import XCTVapor
@testable import MLDVaporCore

final class RouteMock: VaporRoute {
    typealias Context = RouteContextMock
    
    var path: String { "mock" }
    
    func buildContext(app: Application, request: Request) throws -> RouteContextMock {
        throw NSError(domain: "", code: 0)
    }
    
    func buildPage(app: Application, request: Request) async throws -> View {
        throw NSError(domain: "", code: 0)
    }
}
