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
    
    public let achievements = V2Achievements(type: "account/achievements")
    public let bank = V2Bank(type: "account/bank")
    public let dungeons = V2Dungeons(type: "account/dungeons")
    public let dyes = V2Dyes(type: "account/dyes")
    public let finishers = V2Finishers(type: "account/finishers")
    public let gliders = V2Gliders(type: "account/gliders")
    public let home = V2Home()
    public let inventory = V2Inventory(type: "account/inventory")
    public let mailCarriers = V2MailCarriers(type: "account/mailcarriers")
    public let masteries = V2Masteries(type: "account/masteries")
    public let masteryPoints = V2MasteryPoints(type: "account/mastery/points")
    public let materials = V2Materials(type: "account/materials")
    
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

public class V2Achievements: APIV2Object {
    public func get() -> Achievements? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode(Achievements.self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2Bank: APIV2Object {
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

public class V2Dungeons: APIV2Object {
    public func get() -> [String]? {
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

public class V2Dyes: APIV2Object {
    public func get() -> [Int]? {
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
}

public class V2Finishers: APIV2Object {
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

public class V2Gliders: APIV2Object {
    public func get() -> [Int]? {
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
}

public class V2Home {
    public let cats = V2Cats(type: "account/home/cats")
    public let nodes = V2Nodes(type: "account/home/nodes")
}

public class V2Cats: APIV2Object {
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

public class V2Nodes: APIV2Object {
    public func get() -> [String]? {
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

public class V2Inventory: APIV2Object {
    public func get() -> [InventoryItem]? {
        let (data, _, error) = super.getJSON(url: nil, kwargs: [:])
        if error != nil {
            print(error!.localizedDescription)
        }
        if data != nil {
            do {
                let json = try JSONDecoder().decode([InventoryItem].self, from: data!)
                return json
            } catch let jsonErr{
                print("JSON Error: ", jsonErr)
                return nil
            }
        }
        return nil
    }
}

public class V2MailCarriers: APIV2Object {
    public func get() -> [Int]? {
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
}

public class V2Masteries: APIV2Object {
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

public class V2MasteryPoints: APIV2Object {
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

public class V2Materials: APIV2Object {
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







public class V2Colors: APIV2Object {
    public func get() -> [Int]? {
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
