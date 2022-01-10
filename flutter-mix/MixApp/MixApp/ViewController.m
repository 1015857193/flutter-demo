//
//  ViewController.m
//  MixApp
//
//  Created by ksmacmini on 2021/12/7.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"show flutter" forState:UIControlStateNormal];
        [button setBackgroundColor:[UIColor redColor]];
        button.frame = CGRectMake(100, 100, 108, 48);
        [button addTarget:self action:@selector(showFlutterController) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
}

- (void)showFlutterController
{
//    AppDelegate *appDeleagte = (AppDelegate *)UIApplication.sharedApplication.delegate;
//
//    FlutterViewController *flutterViewCtrl = [[FlutterViewController alloc] initWithEngine:appDeleagte.flutterEngine nibName:nil bundle:nil];
//
//    [self presentViewController:flutterViewCtrl animated:YES completion:nil];
    
}


@end
