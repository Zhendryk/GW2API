//
//  V2Items.swift
//  GW2API
//
//  Created by Jonathan Bailey on 4/19/18.
//  Copyright © 2018 Jonathan Bailey. All rights reserved.
//

import Foundation

public class V2Items {
    public let finishers = V2ItemsFinishers(type: "finishers")
    public let items = V2ItemsItems(type: "items")
    public let itemstats = V2ItemsStats(type: "itemstats")
    public let materials = V2ItemsMaterials(type: "materials")
    public let pvpamulets = V2ItemsPvPAmulets(type: "pvp/amulets")
    public let recipes = V2ItemsRecipes(type: "recipes")
    public let skins = V2ItemsSkins(type: "skins")
    
    public class V2ItemsFinishers: APIV2Object {
        
    }
    
    public class V2ItemsItems: APIV2Object {
        
    }
    
    public class V2ItemsStats: APIV2Object {
        
    }
    
    public class V2ItemsMaterials: APIV2Object {
        
    }
    
    public class V2ItemsPvPAmulets: APIV2Object {
        
    }
    
    public class V2ItemsRecipes: APIV2Object {
        public let search = V2ItemsRecipesSearch(type: "recipes/search")
        
        public class V2ItemsRecipesSearch: APIV2Object {
            
        }
    }
    
    public class V2ItemsSkins: APIV2Object {
        
    }
}
