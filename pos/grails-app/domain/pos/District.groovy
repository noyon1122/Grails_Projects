package pos

class District {
    String name
    static belongsTo = [division: Division]
    static constraints = {
    }
}
