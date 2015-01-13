//
//  HistoryViewController.m
//  D
//
//  Created by Ishan  on 4/10/14.
//  Copyright (c) 2014 Ishan . All rights reserved.
//

#import "HistoryViewController.h"

@implementation HistoryViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    NSMutableString *txt=[[NSMutableString alloc] init];
    
    for (NSNumber *n in history) {
     [txt appendFormat:@" %@\n",n];
        
        
    }
    self.historyLbl.text=txt;
     
}

-(void)setHistory:(NSMutableArray *)h{
    history=h;
}

@end
