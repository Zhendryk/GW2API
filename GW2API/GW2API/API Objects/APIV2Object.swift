//
//  APIV2Object.swift
//  GW2API
//
//  Created by Jonathan Bailey on 3/17/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class APIV2Object: APIBaseObject {
    override init(type: String) {
        super.init(type: type)
    }
    
    func getIntArr() -> [Int]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([Int].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
    
    public func getStringArr() -> [String]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([String].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2Build: APIV2Object {
    public func get() -> Build? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(Build.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2Account: APIV2Object {
    
    public let achievements = V2AccountAchievements(type: "account/achievements")
    public let bank = V2AccountBank(type: "account/bank")
    public let dungeons = V2AccountDungeons(type: "account/dungeons")
    public let dyes = V2AccountDyes(type: "account/dyes")
    public let finishers = V2AccountFinishers(type: "account/finishers")
    public let gliders = V2AccountGliders(type: "account/gliders")
    public let home = V2AccountHome()
    public let inventory = V2AccountInventory(type: "account/inventory")
    public let mailCarriers = V2AccountMailCarriers(type: "account/mailcarriers")
    public let masteries = V2AccountMasteries(type: "account/masteries")
    public let masteryPoints = V2AccountMasteryPoints(type: "account/mastery/points")
    public let materials = V2AccountMaterials(type: "account/materials")
    public let minis = V2AccountMinis(type: "account/minis")
    public let outfits = V2AccountOutfits(type: "account/outfits")
    public let pvpHeroes = V2AccountPVPHeroes(type: "account/pvp/heroes")
    public let raids = V2AccountRaids(type: "account/raids")
    public let recipes = V2AccountRecipes(type: "account/recipes")
    public let skins = V2AccountSkins(type: "account/skins")
    public let titles = V2AccountTitles(type: "account/titles")
    
    public func get() -> Account? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(Account.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountAchievements: APIV2Object {
    public func get() -> [Achievement]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([Achievement].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountBank: APIV2Object {
    public func get() -> [BankItem?]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([BankItem?].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountDungeons: APIV2Object {
    public func get() -> [String]? {
        return super.getStringArr()
    }
}

public class V2AccountDyes: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountFinishers: APIV2Object {
    public func get() -> [Finisher]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([Finisher].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountGliders: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountHome {
    public let cats = V2AccountCats(type: "account/home/cats")
    public let nodes = V2AccountNodes(type: "account/home/nodes")
}

public class V2AccountCats: APIV2Object {
    public func get() -> [Cat]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([Cat].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountNodes: APIV2Object {
    public func get() -> [String]? {
        return super.getStringArr()
    }
}

public class V2AccountInventory: APIV2Object {
    public func get() -> [InventoryItem?]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([InventoryItem?].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountMailCarriers: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountMasteries: APIV2Object {
    public func get() -> [Mastery]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([Mastery].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountMasteryPoints: APIV2Object {
    public func get() -> MasteryPoints? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(MasteryPoints.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountMaterials: APIV2Object {
    public func get() -> [Material]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([Material].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2AccountMinis: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountOutfits: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountPVPHeroes: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountRaids: APIV2Object {
    public func get() -> [String]? {
        return super.getStringArr()
    }
}

public class V2AccountRecipes: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountSkins: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}

public class V2AccountTitles: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
}








public class V2Colors: APIV2Object {
    public func get() -> [Int]? {
        return super.getIntArr()
    }
    public func get(kwargs:[String:String]) -> [Colors]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: kwargs)
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                if kwargs["id"] != nil && kwargs["ids"] == nil {
                    let json = try JSONDecoder().decode(Colors.self, from: data!)
                    return [json]
                }
                else if kwargs["ids"] != nil && kwargs["id"] == nil {
                    let json = try JSONDecoder().decode([Colors].self, from: data!)
                    return json
                }
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}
