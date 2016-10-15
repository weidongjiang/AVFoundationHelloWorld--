//
//  JWDSpeechViewController.h
//  1-AVFoundationHelloWorld
//
//  Created by 蒋伟东 on 16/10/13.
//  Copyright © 2016年 YIXIA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface JWDSpeechViewController : NSObject

@property(nonatomic,strong,readonly)AVSpeechSynthesizer *synthesizer;

+(instancetype)speechController;
- (void)beginConversation;


@end
