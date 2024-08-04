
public protocol VaporRouteContext<Data> {
    associatedtype Data: Encodable
    var requestData: Data { get }
}
