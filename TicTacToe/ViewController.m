//
//  ViewController.m
//  TicTacToe
//
//  Created by Jonah Starling on 9/21/14.
//  Copyright (c) 2014 ITB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSNumber *turnNumber;
@property (strong, nonatomic) NSNumber *player1TL;
@property (strong, nonatomic) NSNumber *player1TM;
@property (strong, nonatomic) NSNumber *player1TR;
@property (strong, nonatomic) NSNumber *player1ML;
@property (strong, nonatomic) NSNumber *player1MM;
@property (strong, nonatomic) NSNumber *player1MR;
@property (strong, nonatomic) NSNumber *player1BL;
@property (strong, nonatomic) NSNumber *player1BM;
@property (strong, nonatomic) NSNumber *player1BR;
@property (strong, nonatomic) NSNumber *player2TL;
@property (strong, nonatomic) NSNumber *player2TM;
@property (strong, nonatomic) NSNumber *player2TR;
@property (strong, nonatomic) NSNumber *player2ML;
@property (strong, nonatomic) NSNumber *player2MM;
@property (strong, nonatomic) NSNumber *player2MR;
@property (strong, nonatomic) NSNumber *player2BL;
@property (strong, nonatomic) NSNumber *player2BM;
@property (strong, nonatomic) NSNumber *player2BR;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    _turnNumber = @1;
    _player1TL = @NO;
    _player1TM = @NO;
    _player1TR = @NO;
    _player1ML = @NO;
    _player1MM = @NO;
    _player1MR = @NO;
    _player1BL = @NO;
    _player1BM = @NO;
    _player1BR = @NO;
    _player2TL = @NO;
    _player2TM = @NO;
    _player2TR = @NO;
    _player2ML = @NO;
    _player2MM = @NO;
    _player2MR = @NO;
    _player2BL = @NO;
    _player2BM = @NO;
    _player2BR = @NO;
    [_winnerText setText:@"Welcome to TicTacToe!"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTLPressed:(id)sender {
    NSLog(@"ButtonTL was pressed");
    [_buttonTL setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonTL.backgroundColor = [UIColor greenColor];
        _player1TL = @YES;
        _turnNumber = @2;
    } else {
        _buttonTL.backgroundColor = [UIColor redColor];
        _player2TL = @YES;
        _turnNumber = @1;
    }
    [_buttonTL setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonTMPressed:(id)sender {
    NSLog(@"ButtonTM was pressed");
    [_buttonTM setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonTM.backgroundColor = [UIColor greenColor];
        _player1TM = @YES;
        _turnNumber = @2;
    } else {
        _buttonTM.backgroundColor = [UIColor redColor];
        _player2TM = @YES;
        _turnNumber = @1;
    }
    [_buttonTM setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonTRPressed:(id)sender {
    NSLog(@"ButtonTR was pressed");
    [_buttonTR setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonTR.backgroundColor = [UIColor greenColor];
        _player1TR = @YES;
        _turnNumber = @2;
    } else {
        _buttonTR.backgroundColor = [UIColor redColor];
        _player2TR = @YES;
        _turnNumber = @1;
    }
    [_buttonTR setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonMLPressed:(id)sender {
    NSLog(@"ButtonML was pressed");
    [_buttonML setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonML.backgroundColor = [UIColor greenColor];
        _player1ML = @YES;
        _turnNumber = @2;
    } else {
        _buttonML.backgroundColor = [UIColor redColor];
        _player2ML = @YES;
        _turnNumber = @1;
    }
    [_buttonML setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonMMPressed:(id)sender {
    NSLog(@"ButtonMM was pressed");
    [_buttonMM setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonMM.backgroundColor = [UIColor greenColor];
        _player1MM = @YES;
        _turnNumber = @2;
    } else {
        _buttonMM.backgroundColor = [UIColor redColor];
        _player2MM = @YES;
        _turnNumber = @1;
    }
    [_buttonMM setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonMRPressed:(id)sender {
    NSLog(@"ButtonMR was pressed");
    [_buttonMR setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonMR.backgroundColor = [UIColor greenColor];
        _player1MR = @YES;
        _turnNumber = @2;
    } else {
        _buttonMR.backgroundColor = [UIColor redColor];
        _player2MR = @YES;
        _turnNumber = @1;
    }
    [_buttonMR setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonBLPressed:(id)sender {
    NSLog(@"ButtonBL was pressed");
    [_buttonBL setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonBL.backgroundColor = [UIColor greenColor];
        _player1BL = @YES;
        _turnNumber = @2;
    } else {
        _buttonBL.backgroundColor = [UIColor redColor];
        _player2BL = @YES;
        _turnNumber = @1;
    }
    [_buttonBL setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonBMPressed:(id)sender {
    NSLog(@"ButtonBM was pressed");
    [_buttonBM setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonBM.backgroundColor = [UIColor greenColor];
        _player1BM = @YES;
        _turnNumber = @2;
    } else {
        _buttonBM.backgroundColor = [UIColor redColor];
        _player2BM = @YES;
        _turnNumber = @1;
    }
    [_buttonBM setEnabled:NO];
    [self checkWinner];
}
- (IBAction)buttonBRPressed:(id)sender {
    NSLog(@"ButtonBR was pressed");
    [_buttonBR setTitle:@"Taken" forState:UIControlStateDisabled];
    if ([_turnNumber  isEqual: @1]) {
        _buttonBR.backgroundColor = [UIColor greenColor];
        _player1BR = @YES;
        _turnNumber = @2;
    } else {
        _buttonBR.backgroundColor = [UIColor redColor];
        _player2BR = @YES;
        _turnNumber = @1;
    }
    [_buttonBR setEnabled:NO];
    [self checkWinner];
}

- (void)resetGame {
    NSLog(@"The app was reset.");
    _turnNumber = @1;
    [_buttonTL setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonTL.backgroundColor = [UIColor whiteColor];
    [_buttonTL setEnabled:YES];
    [_buttonTM setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonTM.backgroundColor = [UIColor whiteColor];
    [_buttonTM setEnabled:YES];
    [_buttonTR setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonTR.backgroundColor = [UIColor whiteColor];
    [_buttonTR setEnabled:YES];
    [_buttonML setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonML.backgroundColor = [UIColor whiteColor];
    [_buttonML setEnabled:YES];
    [_buttonMM setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonMM.backgroundColor = [UIColor whiteColor];
    [_buttonMM setEnabled:YES];
    [_buttonMR setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonMR.backgroundColor = [UIColor whiteColor];
    [_buttonMR setEnabled:YES];
    [_buttonBL setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonBL.backgroundColor = [UIColor whiteColor];
    [_buttonBL setEnabled:YES];
    [_buttonBM setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonBM.backgroundColor = [UIColor whiteColor];
    [_buttonBM setEnabled:YES];
    [_buttonBR setTitle:@"Open" forState:UIControlStateDisabled];
    _buttonBR.backgroundColor = [UIColor whiteColor];
    [_buttonBR setEnabled:YES];
    _player1TL = @NO;
    _player1TM = @NO;
    _player1TR = @NO;
    _player1ML = @NO;
    _player1MM = @NO;
    _player1MR = @NO;
    _player1BL = @NO;
    _player1BM = @NO;
    _player1BR = @NO;
    _player2TL = @NO;
    _player2TM = @NO;
    _player2TR = @NO;
    _player2ML = @NO;
    _player2MM = @NO;
    _player2MR = @NO;
    _player2BL = @NO;
    _player2BM = @NO;
    _player2BR = @NO;
}

- (IBAction)resetPressed:(id)sender {
    [self resetGame];
    [_winnerText setText:@"Winner was nobody!"];
}

- (void)checkWinner {
    if ([_player1TL isEqual: @YES] && [_player1TM isEqual: @YES] && [_player1TR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1ML isEqual: @YES] && [_player1MM isEqual: @YES] && [_player1MR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1BL isEqual: @YES] && [_player1BM isEqual: @YES] && [_player1BR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1TL isEqual: @YES] && [_player1ML isEqual: @YES] && [_player1BL isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1TM isEqual: @YES] && [_player1MM isEqual: @YES] && [_player1BM isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1TR isEqual: @YES] && [_player1MR isEqual: @YES] && [_player1BR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1TL isEqual: @YES] && [_player1MM isEqual: @YES] && [_player1BR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    if ([_player1TR isEqual: @YES] && [_player1MM isEqual: @YES] && [_player1BL isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 1!"];
        [self resetGame];
    }
    
    if ([_player2TL isEqual: @YES] && [_player2TM isEqual: @YES] && [_player2TR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2ML isEqual: @YES] && [_player2MM isEqual: @YES] && [_player2MR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2BL isEqual: @YES] && [_player2BM isEqual: @YES] && [_player2BR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2TL isEqual: @YES] && [_player2ML isEqual: @YES] && [_player2BL isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2TM isEqual: @YES] && [_player2MM isEqual: @YES] && [_player2BM isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2TR isEqual: @YES] && [_player2MR isEqual: @YES] && [_player2BR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2TL isEqual: @YES] && [_player2MM isEqual: @YES] && [_player2BR isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
    if ([_player2TR isEqual: @YES] && [_player2MM isEqual: @YES] && [_player2BL isEqual: @YES]) {
        [_winnerText setText:@"Winner was Player 2!"];
        [self resetGame];
    }
}
@end
