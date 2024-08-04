
@resultBuilder
public struct RouteBuilder {
    public static func buildBlock(_ components: any VaporRoute...) -> [any VaporRoute] {
        components
    }
    public static func buildBlock(_ components: [any VaporRoute]) -> [any VaporRoute] {
        components
    }
}
