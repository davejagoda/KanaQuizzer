//
//  Kana.m
//  KanaCommandLine
//
//  Created by dj on 9/30/11.
//  Copyright 2011. All rights reserved.
//

#import "Kana.h"

@implementation Kana

-(id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        // I hope this will create the proper space to store this so we can set it later
        hiragana = @"h";
        katakana = @"k";
        romaji = @"r";
    }    
    return self;
}
// it seems like this should work, but it doesn't compile (duplicate definition of init)
-(id)initWithKana:(Kana *)kana
{
    self = [super init];
    if (self) {
        hiragana = @"h";
        katakana = @"k";
        romaji = @"r";
    }
    return self;
}
-(void) print
{
    // can we call other methods from here?
    // for now we'll just do it the dumb way
    NSLog(@"%@ %@ %@", [self getKatakana], [self getHiragana], [self getRomaji]);
}
-(void) setHiragana:(NSString *) h
{
    hiragana = h;
}
-(void) setKatakana:(NSString *) k
{
    katakana = k;
}
-(void) setRomaji:(NSString *) r
{
    romaji = r;
}
-(void) setHiragana:(NSString *) h setKatakana:(NSString *) k setRomaji:(NSString *) r;
{
    hiragana = h;
    katakana = k;
    romaji = r;
}
-(NSString *) getHiragana;
{
    return hiragana;
}
-(NSString *) getKatakana
{
    return katakana;
}
-(NSString *) getRomaji
{
    return romaji;
}
@end
