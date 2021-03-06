//
//  PESNode.m
//  PESGraph
//
//  Created by Peter Snyder on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PESGraphNode.h"
#import <KZPropertyMapper/KZPropertyMapper.h>
#import <CoreLocation/CLLocation.h>

#define CoIdentifier @"id"
#define CoImmediateNodes @"imm"
#define CoLatitude @"lat"
#define CoLongitude @"lng"
#define CoFloorID @"fid"
#define CoIsInternal @"inter"

@implementation PESGraphNode

@synthesize identifier;

-(instancetype)init {
    self = [super init];
    
    if (self != nil) {
        self.isInternal = NO;
    }
    
    return self;
}


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

+ (instancetype)nodeWithIdentifier:(NSString*)identifier lat:(double)lat lng:(double)lng floor:(NSString*)floorID immidiates:(NSArray*)immidiateNodes {
    
    PESGraphNode *node = [[PESGraphNode alloc] init];
    
    node.identifier = identifier;
    node.latitude = lat;
    node.longitude = lng;
    node.floorID = floorID;
    node.immediateNodes = immidiateNodes;
    
    return node;
}

-(void)mapWithObject:(id)object {
    
    NSDictionary *mapping = @{
                              CoIdentifier: KZProperty(identifier),
                              CoImmediateNodes: KZProperty(immediateNodes),
                              CoLatitude: KZProperty(latitude),
                              CoLongitude: KZProperty(longitude),
                              CoFloorID: KZProperty(floorID),
                              CoIsInternal: KZProperty(isInternal)
                              };
    
    [KZPropertyMapper mapValuesFrom:object toInstance:self usingMapping:mapping];
}

-(CLLocation*)location {
    return [[CLLocation alloc] initWithLatitude:self.latitude longitude:self.longitude];
}


@end
