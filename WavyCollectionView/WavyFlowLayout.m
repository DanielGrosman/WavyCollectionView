//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Daniel Grosman on 2017-11-16.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout {
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
 //Set minimum interitem spacing to be huge to force all items to be on their own line
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    // Need to copy attrs from super to avoid cached frame mismatch
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *attribute in superAttrs){
        
    CGFloat randomYValue = arc4random_uniform(self.collectionView.frame.size.height-26)+25;
        CGPoint newPoint = CGPointMake(attribute.frame.origin.x+50, randomYValue);
        CGSize newSize = CGSizeMake(100, randomYValue*0.5);
        attribute.size = newSize;
        attribute.center = newPoint;
        
    
        [newAttrs addObject:attribute];
    }
    return newAttrs;
}


@end
