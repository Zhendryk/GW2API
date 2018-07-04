//
//  Authenticated.swift
//  GW2API
//
//  Created by Jonathan Bailey on 7/3/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class AuthenticatedClient : Client {
    
    let account: AccountClient = AccountClient()
    let accountAchievements: AccountAchievementsClient = AccountAchievementsClient()
    
    override func setAPIKey(_ key: String) {
        self.account.setAPIKey(key)
        self.accountAchievements.setAPIKey(key)
        //All others go here
    }
    
    class AccountClient : Client {
        
        func get(from endpoint: Authentication = .account, completion: @escaping (Result<Account?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> Account? in
                guard let result = json as? Account else { return nil }
                return result
            }, completion: completion)
            
            /*
            let authenticatedRequest = super.getAuthorizedRequest(from: endpoint.request)
            switch authenticatedRequest {
            case .success(let authReq):
                fetchAsync(with: authReq, decode: { json -> Account? in
                    guard let result = json as? Account else { return nil }
                    return result
                }, completion: completion)
            case .failure(let error):
                print(error)
                return
            }*/
        }
    }
    
    
    class AccountAchievementsClient : Client {
        
        func get(from endpoint: Authentication = .accountAchievements, completion: @escaping (Result<[AccountAchievement]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountAchievement]? in
                guard let result = json as? [AccountAchievement] else { return nil }
                return result
            }, completion: completion)
        }
    }
}
