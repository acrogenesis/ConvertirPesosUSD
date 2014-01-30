//
//  ViewController.m
//  ConvertirPesosUSD
//
//  Created by Adrian Rangel on 1/22/14.
//  Copyright (c) 2014 Adrian Rangel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.imagenDolar.image = [UIImage imageNamed:@"money-bag.png"];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertirBoton:(id)sender {
    UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"Datos inválidos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil ];
    
    if ([self.tipoCambio.text isEqualToString:@""] || [self.pesos.text isEqualToString:@""]) {
        [error show];
    }else {
        CGFloat tc = [self.tipoCambio.text doubleValue];
        CGFloat pe = [self.pesos.text doubleValue];
        
        CGFloat dolar = pe / tc;
        self.dolares.text = [NSString stringWithFormat:@"%0.2f", dolar];
    }
}
- (IBAction)tapHideKeyboard:(id)sender {
    [self.tipoCambio resignFirstResponder];
    [self.pesos resignFirstResponder];
}
@end
