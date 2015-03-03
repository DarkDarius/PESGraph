//
//  PESNode.m
//  PESGraph
//
//  Created by Peter Snyder on 8/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PESGraphNode.h"

@implementation PESGraphNode

@synthesize identifier;
@synthesize title;


+ (PESGraphNode *)nodeWithIdentifier:(NSString *)anIdentifier {

    PESGraphNode *aNode = [[PESGraphNode alloc] init];
    
    aNode.identifier = anIdentifier;
    
    return aNode;
}

+ (PESGraphNode *)nodeWithObject:(id)object {
    
}



@end
