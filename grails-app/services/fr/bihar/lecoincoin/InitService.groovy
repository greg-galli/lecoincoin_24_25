package fr.bihar.lecoincoin

import grails.gorm.transactions.Transactional

@Transactional
class InitService {

    def init() {
        def roleClient = new Role(authority: "ROLE_CLIENT").save()
        def roleModo = new Role(authority: "ROLE_MODO").save()
        def roleAdmin = new Role(authority: "ROLE_ADMIN").save()
        def userClientInstance = new User(username: "client",
                password: "client",
                email: "client@lecoincoin.fr",
                phone: "0123456789").save()
        def userModoInstance = new User(username: "modo",
                password: "modo",
                email: "modo@lecoincoin.fr").save()
        def userAdminInstance = new User(username: "admin",
                password: "admin",
                email: "admin@lecoincoin.fr").save()
        UserRole.create(userClientInstance, roleClient, true)
        UserRole.create(userModoInstance, roleModo, true)
        UserRole.create(userAdminInstance, roleAdmin, true)

    }
}
