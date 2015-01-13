//
//  ViewController.h
//  D
//
//  Created by Ishan  on 1/10/14.
//  Copyright (c) 2014 Ishan . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface MainViewController : UIViewController {
    int total;
    NSMutableArray *arr;
}

@property (weak, nonatomic) IBOutlet UILabel *totalLbl;
@property (weak, nonatomic) IBOutlet UILabel *goalLbl;
@property (weak, nonatomic) IBOutlet UITextField *amountTxt;

- (IBAction)addProtein:(id)sender;
-(IBAction)revindToMain:(UIStoryboardSegue *)segue;
-(void)changeGoal:(NSNotification *)notification;

 @end
