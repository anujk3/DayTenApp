//
//  ViewController.h
//  DayTenApp
//
//  Created by Anuj Katiyal on 29/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)tappedSaveData:(id)sender;
- (IBAction)tappedFetchData:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblInfo;

@end

