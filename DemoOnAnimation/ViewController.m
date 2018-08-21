//
//  ViewController.m
//  DemoOnAnimation
//
//  Created by volive solutions on 21/08/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *popUpView;
@property (strong, nonatomic) IBOutlet UIButton *cancelBtn;

@end

@implementation ViewController

#pragma cancelBtnAction
- (IBAction)cancelBtnAction:(id)sender {
    [UIView animateWithDuration:1.5
                          delay:0.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         self.popUpView.frame = CGRectMake(0, self.view.frame.size.height, self->_popUpView.frame.size.width,self->_popUpView.frame.size.height);
                     }
                     completion:^(BOOL finished){
                         
                     }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_popUpView setHidden:YES];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [_popUpView setHidden:YES];
}

- (IBAction)popUpBtnAction:(id)sender {
    
    [_popUpView setHidden:NO];
    
    [UIView animateWithDuration:1.2
                          delay:0.5
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         self->_popUpView.frame = CGRectMake(0, self.view.frame.size.height/2-self->_popUpView.frame.size.height/2, self->_popUpView.frame.size.width,self->_popUpView.frame.size.height);
                         
                     }
                     completion:^(BOOL finished){
                     }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
