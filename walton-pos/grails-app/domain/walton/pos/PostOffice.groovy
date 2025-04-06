package walton.pos

class PostOffice {
    String name
    static belongsTo = [district: District]
    static constraints = {
        name unique: true, nullable: false
    }
}
