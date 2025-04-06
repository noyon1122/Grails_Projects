package walton.pos

class District {
    String name
    static belongsTo = [division: Division]
    static hasMany = [postOffices: PostOffice]
    static constraints = {
        name unique: true, nullable: false
    }
}
