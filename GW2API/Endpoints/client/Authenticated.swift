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
    }
    
    class AccountClient : Client {
        let achievements: AccountAchievementsClient = AccountAchievementsClient()
        let bank: AccountBankClient = AccountBankClient()
        let dungeons: AccountDungeonsClient = AccountDungeonsClient()
        let dyes: AccountDyesClient = AccountDyesClient()
        let finishers: AccountFinishersCient = AccountFinishersCient()
        let home: AccountHomeClient = AccountHomeClient()
        let masteries: AccountMasteriesClient = AccountMasteriesClient()
        let materials: AccountMaterialsClient = AccountMaterialsClient()
        let minis: AccountMinisClient = AccountMinisClient()
        let outfits: AccountOutfitsClient = AccountOutfitsClient()
        let raids: AccountRaidsClient = AccountRaidsClient()
        
        override func setAPIKey(_ key: String) {
            self.apiKey = key
            self.achievements.setAPIKey(key)
            self.bank.setAPIKey(key)
            self.dungeons.setAPIKey(key)
            self.dyes.setAPIKey(key)
            self.finishers.setAPIKey(key)
            self.home.setAPIKey(key)
            self.masteries.setAPIKey(key)
            self.materials.setAPIKey(key)
            self.minis.setAPIKey(key)
            self.outfits.setAPIKey(key)
            self.raids.setAPIKey(key)
        }
        
        func get(from endpoint: Authentication = .account, completion: @escaping (Result<Account?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> Account? in
                guard let result = json as? Account else { return nil }
                return result
            }, completion: completion)
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
    
    class AccountBankClient : Client {
        func get(from endpoint: Authentication = .accountBank, completion: @escaping (Result<[AccountBankItem?]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountBankItem?]? in
                guard let result = json as? [AccountBankItem?] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountDungeonsClient : Client {
        func get(from endpoint: Authentication = .accountDungeons, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountDyesClient : Client {
        func get(from endpoint: Authentication = .accountDyes, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountFinishersCient: Client {
        func get(from endpoint: Authentication = .accountFinishers, completion: @escaping (Result<[AccountFinisher]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountFinisher]? in
                guard let result = json as? [AccountFinisher] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountHomeClient : Client {
        
        let cats: AccountHomeCatsClient = AccountHomeCatsClient()
        let nodes: AccountHomeNodesClient = AccountHomeNodesClient()
        
        override func setAPIKey(_ key: String) {
            self.cats.setAPIKey(key)
            self.nodes.setAPIKey(key)
        }
        
        class AccountHomeCatsClient : Client {
            func get(from endpoint: Authentication = .accountHomeCats, completion: @escaping (Result<[AccountCat]?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountCat]? in
                    guard let result = json as? [AccountCat] else { return nil }
                    return result
                }, completion: completion)
            }
        }
        
        class AccountHomeNodesClient : Client {
            func get(from endpoint: Authentication = .accountHomeNodes, completion: @escaping (Result<[String]?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                    guard let result = json as? [String] else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
    
    class AccountInventoryClient : Client {
        func get(from endpoint: Authentication = .accountInventory, completion: @escaping (Result<[AccountInventoryItem?]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountInventoryItem?]? in
                guard let result = json as? [AccountInventoryItem?] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountMasteriesClient : Client {
        
        let points: AccountMasteryPointsClient = AccountMasteryPointsClient()
        
        override func setAPIKey(_ key: String) {
            self.apiKey = key
            self.points.setAPIKey(key)
        }
        
        func get(from endpoint: Authentication = .accountMasteries, completion: @escaping (Result<[AccountMastery]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountMastery]? in
                guard let result = json as? [AccountMastery] else { return nil }
                return result
            }, completion: completion)
        }
        
        class AccountMasteryPointsClient : Client {
            func get(from endpoint: Authentication = .accountMasteryPoints, completion: @escaping (Result<AccountMasteryPoints?, APIError>) -> Void) {
                fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> AccountMasteryPoints? in
                    guard let result = json as? AccountMasteryPoints else { return nil }
                    return result
                }, completion: completion)
            }
        }
    }
    
    class AccountMaterialsClient : Client {
        func get(from endpoint: Authentication = .accountMaterials, completion: @escaping (Result<[AccountMaterial]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [AccountMaterial]? in
                guard let result = json as? [AccountMaterial] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountMinisClient : Client {
        func get(from endpoint: Authentication = .accountMinis, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountOutfitsClient : Client {
        func get(from endpoint: Authentication = .accountOutfits, completion: @escaping (Result<[Int]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [Int]? in
                guard let result = json as? [Int] else { return nil }
                return result
            }, completion: completion)
        }
    }
    
    class AccountRaidsClient : Client {
        func get(from endpoint: Authentication = .accountRaids, completion: @escaping (Result<[String]?, APIError>) -> Void) {
            fetchAsync(with: endpoint.request, needsAuthorization: true, decode: { json -> [String]? in
                guard let result = json as? [String] else { return nil }
                return result
            }, completion: completion)
        }
    }
}
