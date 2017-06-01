//
//  ViewController.m
//  AYScrollerLabel_OC
//
//  Created by Andy on 2017/6/1.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "ViewController.h"
#import "AYScrollerLabel.h"

@interface ViewController ()
@property (nonatomic , strong)AYScrollerLabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _label = [[AYScrollerLabel alloc] initWithFrame:CGRectMake(20, 40, self.view.bounds.size.width - 40, 50)];
    _label.text  = @"版权声明：本文为博主原创文章，未经博主允许不得转载!!!!!" ;
    _label.bgColor = [UIColor redColor];
    _label.textColor = [UIColor orangeColor];
    [self.view addSubview:_label];
    
    NSLog(@"%@",_label.text);

}
- (IBAction)begien:(UIButton *)sender {
    [_label ay_setPaused:NO];
}

- (IBAction)paused:(UIButton *)sender {
    [_label ay_setPaused:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
