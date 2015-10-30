//
//  ViewController.h
//  HideTableDemo
//
//  Created by qingjie on 10/26/15.
//  Copyright © 2015 Retrieve LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tbView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

