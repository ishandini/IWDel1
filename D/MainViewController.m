//
//  ViewController.m
//  D
//
//  Created by Ishan  on 1/10/14.
//  Copyright (c) 2014 Ishan . All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()


@end

@implementation MainViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    self=[super initWithCoder:aDecoder];
    if(self){
        arr=[[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSInteger goal=[[NSUserDefaults standardUserDefaults]integerForKey:@"goal"];
    self.goalLbl.text=[NSString stringWithFormat:@"%d",goal];
    
    NSNotificationCenter *center=[NSNotificationCenter defaultCenter];
    [center addObserver:self
               selector:@selector(changeGoal:)
                   name:NSUserDefaultsDidChangeNotification
                 object:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [self.view endEditing:YES];
}
- (IBAction)addProtein:(id)sender {
    int add=self.amountTxt.text.integerValue;
    total +=add;
    self.totalLbl.text=[NSString stringWithFormat:@"%d",total];
    [arr addObject:[NSNumber numberWithInt:add]];
    self.amountTxt.text=@"";
    
    if(total>=self.goalLbl.text.intValue){
        UIAlertView *alt=[[UIAlertView alloc]initWithTitle:@"Success!" message:@"You reach goal" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alt show];
    }
    // [[self amountTxt] resignFirstResponder];
    
}
-(IBAction)revindToMain:(UIStoryboardSegue *)segue{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showHistory"]){
        
        HistoryViewController *controller=(HistoryViewController *)segue.destinationViewController;
        [controller setHistory:arr];
    }
}
-(void)changeGoal:(NSNotification *)notification{
    NSUserDefaults *def=(NSUserDefaults *)notification.object;
    NSInteger goal=[def integerForKey:@"goal"];
     self.goalLbl.text=[NSString stringWithFormat:@"%d",goal];
}
@end
