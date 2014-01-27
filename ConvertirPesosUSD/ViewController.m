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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertirBoton:(id)sender {
    
    CGFloat tc = [self.tipoCambio.text doubleValue];
    CGFloat pe = [self.pesos.text doubleValue];
    
    CGFloat dolar = pe / tc;
    self.dolares.text = [NSString stringWithFormat:@"%0.2f", dolar];
    
}
@end
