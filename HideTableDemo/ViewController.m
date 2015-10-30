//
//  ViewController.m
//  HideTableDemo
//
//  Created by qingjie on 10/26/15.
//  Copyright © 2015 Retrieve LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL flag;
}

@end

@implementation ViewController 
 NSArray *tableData;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self rotate:nil];

    
    
    
    
    NSURL *websiteUrl = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webView loadRequest:urlRequest];
    
    
    
    tableData = [NSArray arrayWithObjects:@"1", @"2",@"3", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [tableData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}


- (IBAction)btnTapped:(id)sender {
    
   
    
    if (self.webView.hidden == YES) {
        self.webView.hidden = NO;
        [UIView animateWithDuration:0.25 animations:^{
            [self.tbView setFrame:CGRectMake(0, 220, 600, 170)];
        }];
        
    }
    else{
        
        self.webView.hidden = YES;
        [UIView animateWithDuration:0.25 animations:^{
            [self.tbView setFrame:CGRectMake(0, 50, 600, 170)];
        }];

    }
      [self rotate:sender];
}

- (void)rotate:(id)sender {
    if (flag) {
        [UIView animateWithDuration:0.5 animations:^{
            self.btn.transform = CGAffineTransformMakeRotation(M_PI);
        } completion:^(BOOL finished) {
            flag = NO;
        }];
    }
    else {
        [UIView animateWithDuration:0.5 animations:^{
            self.btn.transform = CGAffineTransformMakeRotation(0);
        } completion:^(BOOL finished) {
            flag = YES;
        }];
    }
}

@end
