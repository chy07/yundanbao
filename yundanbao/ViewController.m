//
//  ViewController.m
//  yundanbao
//
//  Created by 56hui on 15/9/17.
//  Copyright (c) 2015年 56hui. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *photoText;
@property (weak, nonatomic) IBOutlet UIButton *codeButton;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UITextField *codeText;
- (IBAction)textFiledReturnEditing:(id)sender;
- (IBAction)getCode;
- (IBAction)gologin;
- (BOOL)isPureInt:(NSString*)string;
@end

@implementation ViewController
-(BOOL)isPureInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

-(IBAction)getCode{
     NSString *photoNumber = self.photoText.text;
    if([photoNumber isEqualToString:@""] ||photoNumber==nil){
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入手机号码" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
        
    }else if([self isPureInt:photoNumber]==false || photoNumber.length!=11){
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"手机号码不正确" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
    }else{
        
    }
}

-(IBAction)gologin{
    if([self.photoText.text isEqualToString:@""] || self.photoText.text==nil){
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入手机号码" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
        
    }else if ([self.codeText.text isEqualToString:@""] || self.codeText.text==nil){
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入验证码" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
    }else{
        
    }
}
-(IBAction)textFiledReturnEditing:(id)sender {
    [self.view endEditing:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
