//
//  ViewController.m
//  RegularExpressionDemo
//
//  Created by shenzhenshihua on 2017/8/21.
//  Copyright © 2017年 shenzhenshihua. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *enterText;
@property (weak, nonatomic) IBOutlet UITextView *logText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnAction:(UIButton *)sender {
    if (!self.enterText.text.length) {
        self.logText.text = [NSString stringWithFormat:@"%@:无效输入\n%@",self.enterText.text,self.logText.text];
        return;
    }
    //验证是不是QQ号
    NSString *pattern = @"[1-9][0-9]{4,14}";
    NSPredicate * pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pre evaluateWithObject:self.enterText.text];
    if (isMatch) {
        self.logText.text = [NSString stringWithFormat:@"%@:匹配成功\n%@",self.enterText.text,self.logText.text];
    }else{
        self.logText.text = [NSString stringWithFormat:@"%@:匹配失败\n%@",self.enterText.text,self.logText.text];
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
