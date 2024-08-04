
import XCTVapor
@testable import MLDVaporCore

final class RouteBuilderTests: XCTestCase {
    func test_build_one_route() {
        @RouteBuilder
        var route: [any VaporRoute] {
            RouteMock()
        }
        
        XCTAssertEqual(route.count, 1)
    }
    
    func test_build_many_routes() {
        @RouteBuilder
        var routes: [any VaporRoute] {
            RouteMock()
            RouteMock()
            RouteMock()
        }
        
        XCTAssertEqual(routes.count, 3)
    }
    
    func test_build_many_routes_from_array() {
        let routes = (0...5).map { _ in
            RouteMock()
        }
        
        @RouteBuilder
        var result: [any VaporRoute] {
            routes
        }
        
        XCTAssertEqual(result.count, routes.count)
    }
}
