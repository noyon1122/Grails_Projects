package walton.pos

class Division {
     String name
    static hasMany = [districts: District]
    static constraints = {
        name unique: true, nullable: false
    }
}
