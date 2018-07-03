//
//  Authenticated.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/3/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class AuthenticatedClient : Client {
    
    let account: AccountClient = AccountClient()
    
    override func setAPIKey(_ key: String) {
        self.account.setAPIKey(key)
        //All others go here
    }
    
    class AccountClient : Client {
        func get(from endpoint: Authentication = .account, completion: @escaping (Result<Account?, APIError>) -> Void) {
            if let authenticatedRequest = super.getAuthorizedRequest(from: endpoint.request).0 {
                fetchAsync(with: authenticatedRequest, decode: { json -> Account? in
                    guard let result = json as? Account else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
}
