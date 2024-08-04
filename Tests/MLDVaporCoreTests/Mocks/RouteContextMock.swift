
@testable import MLDVaporCore

struct RouteContextMock: VaporRouteContext {
    let requestData: Data
    
    struct Data: Encodable {
        let title: String
    }
}
