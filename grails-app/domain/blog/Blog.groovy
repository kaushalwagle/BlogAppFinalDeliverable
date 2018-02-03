package blog

class Blog {
    String title
    String content
    String authorName
    Date dateCreated
    Date dateModified

    static constraints = {
        dateCreated nullable: true
        dateModified nullable: true
    }
}
