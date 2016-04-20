//
//  ViewController.m
//  HitTestPratice2
//
//  Created by  江苏 on 16/4/20.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "playButton.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet playButton *playButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPanGestureRecognizer* pan=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(pan:)];
    [self.playButton addGestureRecognizer:pan];
}

- (IBAction)play:(UIButton *)sender {
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.center=CGPointMake(100, -100);
    btn.bounds=CGRectMake(0, 0, 100, 100);
    
    [btn setImage:[UIImage imageNamed:@"对话框"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"小孩"] forState:UIControlStateHighlighted];
    
    self.playButton.btn=btn;
    
    [self.playButton addSubview:btn];
    
    
}

-(void)pan:(UIPanGestureRecognizer*)pan{
    
    CGPoint transP=[pan translationInView:self.view];
    
    self.playButton.transform=CGAffineTransformTranslate(self.playButton.transform, transP.x, transP.y);
    
    [pan setTranslation:CGPointZero inView:self.view];
    
}
@end
