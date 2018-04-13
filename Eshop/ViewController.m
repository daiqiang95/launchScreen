//
//  ViewController.m
//  Eshop
//
//  Created by 代强 on 2018/4/13.
//  Copyright © 2018年 代强. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<UIWebViewDelegate>
@property (nonatomic,strong) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    _webView.backgroundColor = [UIColor whiteColor];
    _webView.scalesPageToFit = YES;
    _webView.scrollView.bounces = NO;
    [self.view addSubview:_webView];
    
    NSString *urlWeb = [NSString stringWithFormat:@"http://baidu.com"];
//    NSString  *newUrlString = [urlWeb stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:urlWeb]];
    NSLog(@"url is %@",urlWeb);
    _webView.delegate = self;
    [_webView loadRequest:req];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
