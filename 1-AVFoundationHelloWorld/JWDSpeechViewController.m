//
//  JWDSpeechViewController.m
//  1-AVFoundationHelloWorld
//
//  Created by 蒋伟东 on 16/10/13.
//  Copyright © 2016年 YIXIA. All rights reserved.
//

#import "JWDSpeechViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface JWDSpeechViewController ()

@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;
@property (strong, nonatomic) NSArray *voices;
@property (strong, nonatomic) NSArray *speechStrings;

@end

@implementation JWDSpeechViewController

+(instancetype)speechController {
    return [[self alloc] init];
}

-(id)init {

    self = [super init];
    if (self) {
    
        _synthesizer = [[AVSpeechSynthesizer alloc] init];
    
        _voices = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"],
                    [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"]];
        
        _speechStrings = [self buildSpeechStrings];

    }
    return self;
}
- (NSArray *)buildSpeechStrings {

    return @[@"Hello World",
             @"你好！",
             @"Hello AV Foundation. How are you?",
             @"很高兴见到你！",
             @"I'm well! Thanks for asking.",
             @"么么哒",
             @"Are you excited about the book?",
             @"哎呦不错哦",
             @"Very! I have always felt so misunderstood.",
             ];
}

- (void)beginConversation{

    for (NSInteger i=0; i<self.speechStrings.count; i++) {
        
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:self.speechStrings[i]];
        
        utterance.voice = self.voices[i % 2];
        // 速率
        utterance.rate = self.voices[i % 2] ? 0.5f : 0.8f;
        // 音调
        utterance.pitchMultiplier = 0.8f;
        // 有节奏的说
        utterance.postUtteranceDelay = 0.1f;
        
        [self.synthesizer speakUtterance:utterance];
        
    }
}



@end
