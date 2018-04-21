//
//  V2Items.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/21/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

class V2Items {
    let finishers = V2ItemsFinishers(type: "finishers")
    let items = V2ItemsItems(type: "items")
    let itemstats = V2ItemsStats(type: "itemstats")
    let materials = V2ItemsMaterials(type: "materials")
    let pvpamulets = V2ItemsPvPAmulets(type: "pvp/amulets")
    let recipes = V2ItemsRecipes(type: "recipes")
    let skins = V2ItemsSkins(type: "skins")
    
    class V2ItemsFinishers: APIV2Object {
        
    }
    
    class V2ItemsItems: APIV2Object {
        
    }
    
    class V2ItemsStats: APIV2Object {
        
    }
    
    class V2ItemsMaterials: APIV2Object {
        
    }
    
    class V2ItemsPvPAmulets: APIV2Object {
        
    }
    
    class V2ItemsRecipes: APIV2Object {
        let search = V2ItemsRecipesSearch(type: "recipes/search")
        
        class V2ItemsRecipesSearch: APIV2Object {
            
        }
    }
    
    class V2ItemsSkins: APIV2Object {
        
    }
}
