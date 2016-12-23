//
//  Inventory.h
//  InventoryJSON
//
//  Created by BridgeLabz Solutions LLP on 22/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP. All rights reserved.
//

#import<Foundation/Foundation.h>

@interface Inventory : NSObject
    {
        
    }
    @property (nonatomic,strong)NSString *name;
    @property (nonatomic,strong)NSString *weight;
    @property (nonatomic,strong)NSString *price;
    -(void)get;
@end
