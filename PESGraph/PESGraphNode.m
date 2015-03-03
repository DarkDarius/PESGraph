//
//  PESNode.m
//  PESGraph
//
//  Created by Peter Snyder on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PESGraphNode.h"
#import <KZPropertyMapper/KZPropertyMapper.h>

#define CoIdentifier @"id"
#define CoImmediateNodes @"imm"
#define CoLatitude @"lat"
#define CoLongitude @"lng"

@implementation PESGraphNode

@synthesize identifier;


+ (PESGraphNode *)nodeWithIdentifier:(NSString *)anIdentifier {

    PESGraphNode *aNode = [[PESGraphNode alloc] init];
    
    aNode.identifier = anIdentifier;
    
    return aNode;
}

+ (PESGraphNode *)nodeWithObject:(id)object {
    PESGraphNode *node = [[PESGraphNode alloc] init];

    [node mapWithObject:object];
    
    return node;
}

-(void)mapWithObject:(id)object {
    
    NSDictionary *mapping = @{
                              CoIdentifier: KZProperty(identifier),
                              CoImmediateNodes: KZProperty(immediateNodes),
                              CoLatitude: KZProperty(latitude),
                              CoLongitude: KZProperty(longitude),
                              };
    
    [KZPropertyMapper mapValuesFrom:object toInstance:self usingMapping:mapping];
}



@end
