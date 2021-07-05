//
//  Models.swift
//  Shiny
//
//  Created by Frederic Jahn on 05.07.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation


class CredentialCreation : Codable {
    var publicKey: CredentialCreationPublicKey
}

class CredentialCreationPublicKey : Codable {
    var challenge: String
    var user: CredentialCreationUser
    var attestation: String?
    var authenticatorSelection: CredentialCreationAuthenticatorSelection?
}

class CredentialCreationUser : Codable {
    var id: String
    var username: String
    var displayName: String
}


class CredentialCreationAuthenticatorSelection : Codable {
    var userVerification: String
}



class CredentialAssertion : Codable {
    var publicKey: CredentialAssertionPublicKey
}

class CredentialAssertionPublicKey : Codable {
    var challenge: String
    var userVerification: String?
}
