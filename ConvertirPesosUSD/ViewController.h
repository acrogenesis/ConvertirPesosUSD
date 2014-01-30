//
//  ViewController.h
//  ConvertirPesosUSD
//
//  Created by Adrian Rangel on 1/22/14.
//  Copyright (c) 2014 Adrian Rangel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tipoCambio;
@property (weak, nonatomic) IBOutlet UITextField *pesos;
@property (weak, nonatomic) IBOutlet UITextField *dolares;
- (IBAction)convertirBoton:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imagenDolar;
- (IBAction)tapHideKeyboard:(id)sender;

@end
