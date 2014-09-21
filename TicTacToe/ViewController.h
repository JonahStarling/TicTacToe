//
//  ViewController.h
//  TicTacToe
//
//  Created by Jonah Starling on 9/21/14.
//  Copyright (c) 2014 ITB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonTL;
@property (weak, nonatomic) IBOutlet UIButton *buttonTM;
@property (weak, nonatomic) IBOutlet UIButton *buttonTR;
@property (weak, nonatomic) IBOutlet UIButton *buttonML;
@property (weak, nonatomic) IBOutlet UIButton *buttonMM;
@property (weak, nonatomic) IBOutlet UIButton *buttonMR;
@property (weak, nonatomic) IBOutlet UIButton *buttonBL;
@property (weak, nonatomic) IBOutlet UIButton *buttonBM;
@property (weak, nonatomic) IBOutlet UIButton *buttonBR;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UILabel *winnerText;


@end

