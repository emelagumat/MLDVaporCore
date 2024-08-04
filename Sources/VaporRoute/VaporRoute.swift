
import Vapor

public protocol VaporRoute<Context> {
    associatedtype Context: VaporRouteContext & Encodable
    
    var path: String { get }
    var subpaths: [String]? { get }
    
    func buildContext(app: Application, request: Request) throws -> Context
    func buildPage(app: Application, request: Request) async throws -> View
}

public extension VaporRoute {
    var subpaths: [String]? { nil }
    func buildPage(app: Application, request: Request) async throws -> View {
        let context = try buildContext(app: app, request: request)
        
        return try await request.view.render(path, context).get()
    }
}
