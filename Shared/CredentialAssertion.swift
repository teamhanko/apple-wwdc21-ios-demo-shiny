//
//  CredentialAssertion.swift
//  Shiny
//
//  Created by Frederic Jahn on 16.06.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

class CredentialAssertion : Codable {
    var publicKey: PublicKeyCredentialAssertionOptions
}

class PublicKeyCredentialAssertionOptions: Codable {
    var challenge: String
    var rpId: String
    var timeout: Int?
    var userVerification: String?
}

// MARK: Responses
class CredentialAssertionResponse : Codable {
    var id: String
    var rawId: String
    var type: String
    var response: AuthenticatorAssertionResponse
}

class AuthenticatorAssertionResponse : Codable {
    var authenticatorData: String
    var clientDataJSON: String
    var signature: String
    var userHandle: String
}
