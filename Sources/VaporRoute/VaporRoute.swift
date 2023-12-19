
import Vapor

public protocol VaporRoute<Context> {
    associatedtype Context: VaporRouteContext
    var path: String { get }
    func buildContext(app: Application, request: Request) throws -> Context
    func buildPage(app: Application, request: Request) async throws -> View
}

public protocol VaporRouteContext<Data> {
    associatedtype Data: Encodable
    var requestData: Data { get }
}
