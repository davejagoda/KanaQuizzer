//
//  Kana.h
//  KanaCommandLine
//
//  Created by dj on 9/30/11.
//  Copyright 2011,2012. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kana : NSObject
{
    NSString *hiragana;
    NSString *katakana;
    NSString *romaji;
    int row;  // row position in the table
    int col;  // column position in the table
}

-(void) print;
// synthesize this instead of coding it?
-(void) setHiragana: (NSString *) h;
-(void) setKatakana: (NSString *) k;
-(void) setRomaji:   (NSString *) r;
-(void) setHiragana: (NSString *) h setKatakana:(NSString *) k setRomaji:(NSString *) r;
//-(void) setRow:      (int) row;
//-(void) setCol:      (int) col;
-(NSString *) getHiragana;
-(NSString *) getKatakana;
-(NSString *) getRomaji;
//-(int)        getRow;
//-(int)        getCol;
@end
