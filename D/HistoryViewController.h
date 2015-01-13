//
//  HistoryViewController.h
//  D
//
//  Created by Ishan  on 4/10/14.
//  Copyright (c) 2014 Ishan . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HistoryViewController : UIViewController{
    NSMutableArray *history;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLbl;

-(void)setHistory:(NSMutableArray *)h;

@end
