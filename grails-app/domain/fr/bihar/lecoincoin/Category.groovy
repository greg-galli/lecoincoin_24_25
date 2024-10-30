package fr.bihar.lecoincoin

class Category {

    String name
    Category parent

    static hasMany = [saleAds: SaleAd]

    static constraints = {
        name nullable: false, blank: false
        parent nullable: true
    }
}
