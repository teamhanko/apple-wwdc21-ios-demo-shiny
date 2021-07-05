//
//  CredentialCreation.swift
//  Shiny
//
//  Created by Frederic Jahn on 15.06.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class CredentialCreation : Codable {
    var publicKey: PublicKeyCredentialCreationOptions
}

class PublicKeyCredentialCreationOptions : Codable {
    var challenge: String
    var rp: RelyingPartyEntity
    var user: UserEntity
    var pubKeyCredParams: Array<CredentialParameter>
    var authenticatorSelection: AuthenticatorSelection?
    var timeout: Int?
    var excludeCredentials: Array<CredentialDescriptor>?
    var attestation: String?
}

class RelyingPartyEntity : Codable {
    var id: String
    var name: String
}

class UserEntity : Codable {
    var id: String
    var name: String
    var displayName: String?
}

class CredentialParameter : Codable {
    var type: String
    var alg: Int
}

class AuthenticatorSelection : Codable {
    var authenticatorAttachment: String?
    var requireResidentKey: Bool?
    var userVerification: String?
}

class CredentialDescriptor : Codable {
    var type: String
    var id: String
    var transports: Array<String>
}

// MARK: Responses
class CredentialCreationResponse : Codable {
    var id: String
    var rawId: String
    var type: String
    var response: AuthenticatorAttestationResponse
}

class AuthenticatorAttestationResponse : Codable {
    var attestationObject: String
    var clientDataJSON: String
}
