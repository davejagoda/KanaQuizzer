//
//  KanaCommandLine.m
//  KanaCommandLine
//
//  Created by dj on 9/30/11.
//  Copyright 2011,2012. All rights reserved.
//

#import "Kana.h"

// should this all get read from a file
// or just hardcode it?
// for now, we'll just hard code a + m/n
// we need an array of objects
// the 'ord' thing needs to go away
// instead use the position in the array 

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int i = 0;
    int const numberOfKana = 46;
    NSMutableArray *kana = [NSMutableArray arrayWithCapacity:numberOfKana];
    // This doesn't work, k ends up just holding the value of the last object added
    // make a generic k, initialize it, set them each one by one
    // and call addObject for each of them
    
    // 1. add to the init method setHiragana setKatakana setRomaji
    // 2. NSBundle to read a file
    // 3. NSDictionary - valueForKey
    // Use categories - add methods (Apple's preferred method instead of subclassing)
    // Kana k = [[Kana alloc] init];
    
    for (i = numberOfKana; i > 0; --i) {
        [kana addObject:[[Kana alloc] init]];
    }
    
    [[kana objectAtIndex: i] setHiragana:@"あ" setKatakana:@"ア" setRomaji:@"a"];  ++i;
    [[kana objectAtIndex: i] setHiragana:@"い" setKatakana:@"イ" setRomaji:@"i"];  ++i;
    [[kana objectAtIndex: i] setHiragana:@"う" setKatakana:@"ウ" setRomaji:@"u"];  ++i;
    [[kana objectAtIndex: i] setHiragana:@"え" setKatakana:@"エ" setRomaji:@"e"];  ++i;
    [[kana objectAtIndex: i] setHiragana:@"お" setKatakana:@"オ" setRomaji:@"o"];  ++i;
    
    [[kana objectAtIndex: i] setHiragana:@"か" setKatakana:@"カ" setRomaji:@"ka"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"き" setKatakana:@"キ" setRomaji:@"ki"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"く" setKatakana:@"ク" setRomaji:@"ku"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"け" setKatakana:@"ケ" setRomaji:@"ke"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"こ" setKatakana:@"コ" setRomaji:@"ko"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"さ" setKatakana:@"サ" setRomaji:@"sa"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"し" setKatakana:@"シ" setRomaji:@"si"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"す" setKatakana:@"ス" setRomaji:@"su"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"せ" setKatakana:@"セ" setRomaji:@"se"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"そ" setKatakana:@"ソ" setRomaji:@"so"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"た" setKatakana:@"タ" setRomaji:@"ta"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ち" setKatakana:@"チ" setRomaji:@"ti"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"つ" setKatakana:@"ツ" setRomaji:@"tu"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"て" setKatakana:@"テ" setRomaji:@"te"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"と" setKatakana:@"ト" setRomaji:@"to"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"な" setKatakana:@"ナ" setRomaji:@"na"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"に" setKatakana:@"ニ" setRomaji:@"ni"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ぬ" setKatakana:@"ヌ" setRomaji:@"nu"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ね" setKatakana:@"ネ" setRomaji:@"ne"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"の" setKatakana:@"ノ" setRomaji:@"no"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"は" setKatakana:@"ハ" setRomaji:@"ha"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ひ" setKatakana:@"ヒ" setRomaji:@"hi"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ふ" setKatakana:@"フ" setRomaji:@"fu"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"へ" setKatakana:@"ヘ" setRomaji:@"he"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ほ" setKatakana:@"ホ" setRomaji:@"ho"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"ま" setKatakana:@"マ" setRomaji:@"ma"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"み" setKatakana:@"ミ" setRomaji:@"mi"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"む" setKatakana:@"ム" setRomaji:@"mu"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"め" setKatakana:@"メ" setRomaji:@"me"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"も" setKatakana:@"モ" setRomaji:@"mo"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"や" setKatakana:@"ヤ" setRomaji:@"ya"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ゆ" setKatakana:@"ユ" setRomaji:@"yu"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"よ" setKatakana:@"ヨ" setRomaji:@"yo"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"ら" setKatakana:@"ラ" setRomaji:@"ra"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"り" setKatakana:@"リ" setRomaji:@"ri"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"る" setKatakana:@"ル" setRomaji:@"ru"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"れ" setKatakana:@"レ" setRomaji:@"re"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"ろ" setKatakana:@"ロ" setRomaji:@"ro"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"わ" setKatakana:@"ワ" setRomaji:@"wa"]; ++i;
    [[kana objectAtIndex: i] setHiragana:@"を" setKatakana:@"ヲ" setRomaji:@"wo"]; ++i;

    [[kana objectAtIndex: i] setHiragana:@"ん" setKatakana:@"ン" setRomaji:@"n"];  ++i;

    // walk the array and print it out - this worked, so I am commenting it out for now
    // dj 2012-03-24
    //for (i = 0; i < numberOfKana; ++i) {
    //    [[kana objectAtIndex: i] print];
    //}
    i = arc4random() % numberOfKana;
    [[kana objectAtIndex: i] print];
    i = arc4random() % numberOfKana;
    NSLog(@"%@", [[kana objectAtIndex: i] getHiragana]);
    i = arc4random() % numberOfKana;
    NSLog(@"%@", [[kana objectAtIndex: i] getKatakana]);
    [pool drain];
    return 0;
}
