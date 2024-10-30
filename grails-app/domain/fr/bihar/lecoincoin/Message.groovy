package fr.bihar.lecoincoin

class Message {

    String content
    Date dateCreated

    static constraints = {
        content nullable: false, blank: false
    }

    static mapping = {
        content type: 'text'
    }
}
