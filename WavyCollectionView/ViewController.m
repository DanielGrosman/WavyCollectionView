//
//  ViewController.m
//  WavyCollectionView
//
//  Created by Daniel Grosman on 2017-11-16.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "ViewController.h"
#import "WavyFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WavyFlowLayout *wavyLayout = [[WavyFlowLayout alloc] init];
    self.collectionView.collectionViewLayout = wavyLayout;
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *label = (UILabel*)[cell viewWithTag:1];
    label.text = [NSString stringWithFormat:@"Cell %ld",indexPath.item+1];
    
    return cell;
    
}





@end
