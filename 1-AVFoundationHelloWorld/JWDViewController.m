//
//  JWDViewController.m
//  1-AVFoundationHelloWorld
//
//  Created by 蒋伟东 on 16/10/13.
//  Copyright © 2016年 YIXIA. All rights reserved.
//

#import "JWDViewController.h"
#import "JWDSpeechViewController.h"

#define KScreenWidth    ([UIScreen mainScreen].bounds.size.width)
#define KScreenHeight   ([UIScreen mainScreen].bounds.size.height)

@interface JWDViewController ()<AVSpeechSynthesizerDelegate>

@property(nonatomic, strong)JWDSpeechViewController  *speechController;//!< <#value#>
@property(nonatomic, strong)NSMutableArray           *speechStrings;//!< <#value#>

@end

static NSString *JWDSpeechTableViewCellID = @"JWDSpeechTableViewCellID";
@implementation JWDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight)];
    label.numberOfLines = 10;
    [self.view addSubview:label];
    
    label.text = @"Hello World,\n你好！,\nHello AV Foundation. \nHow are you?,\n很高兴见到你！,\nI'm well! Thanks for asking.\n么么哒 \nAre you excited about the book? \n哎呦不错哦 \nVery! I have always felt so misunderstood.";
    

    self.speechController = [JWDSpeechViewController speechController];
    self.speechController.synthesizer.delegate = self;
    self.speechStrings = [NSMutableArray array];
    [self.speechController beginConversation];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
