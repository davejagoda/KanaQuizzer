#!/usr/bin/ruby
# -*- coding: utf-8 -*-

class KanaQuizzer
  MaxCol = 4
  MaxRow = 10
  Hiragana = 0
  Katakana = 1
  Romaji = 2
  NumberToGetRight = 1
  def initialize
# make a 3 dimensional array
# planes: 0=hiragana, 1=katakana, 2=romaji
# columns: vowel column aiueo
# rows: consonant row akstn hmyrw

    r0 = ["あ","い","う","え","お"]
    r1 = ["か","き","く","け","こ"]
    r2 = ["さ","し","す","せ","そ"]
    r3 = ["た","ち","つ","て","と"]
    r4 = ["な","に","ぬ","ね","の"]
    r5 = ["は","ひ","ふ","へ","ほ"]
    r6 = ["ま","み","む","め","も"]
    r7 = ["や","　","ゆ","　","よ"]
    r8 = ["ら","り","る","れ","ろ"]
    r9 = ["わ","　","　","　","を"]
    r10= ["　","　","　","　","ん"]

    t0 = [r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10]

    r0 = ["ア","イ","ウ","エ","オ"]
    r1 = ["カ","キ","ク","ケ","コ"]
    r2 = ["サ","シ","ス","セ","ソ"]
    r3 = ["タ","チ","ツ","テ","ト"]
    r4 = ["ナ","ニ","ヌ","ネ","ノ"]
    r5 = ["ハ","ヒ","フ","ヘ","ホ"]
    r6 = ["マ","ミ","ム","メ","モ"]
    r7 = ["ヤ","　","ユ","　","ヨ"]
    r8 = ["ラ","リ","ル","レ","ロ"]
    r9 = ["ワ","　","　","　","ヲ"]
    r10= ["　","　","　","　","ン"]

    t1 = [r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10]

    r0 = [ "a", "i", "u", "e", "o"]
    r1 = ["ka","ki","ku","ke","ko"]
    r2 = ["sa","si","su","se","so"]
    r3 = ["ta","ti","tu","te","to"]
    r4 = ["na","ni","nu","ne","no"]
    r5 = ["ha","hi","fu","he","ho"]
    r6 = ["ma","mi","mu","me","mo"]
    r7 = ["ya","  ","yu","  ","yo"]
    r8 = ["ra","ri","ru","re","ro"]
    r9 = ["wa","  ","  ","  ","wo"]
    r10= ["  ","  ","  ","  ", "n"]

    t2 = [r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10]

    @l = [ t0 , t1 , t2]
  end

  def isThisCharacterPrintable(k)
# qa approved 2010-03-04
    if (k[1] == 128 && k[2] == 128)
      return false
    else
      return true
    end
  end

  def makeWorkingArray
# array with the tuple plane, row, column, count of consecutive correct answers
    @w = []
    i = 0
    for p in (Hiragana..Katakana)
      for r in (0..MaxRow)
        for c in (0..MaxCol)
          if (isThisCharacterPrintable(@l[p][r][c]))
	    @w.insert(-1, [p,r,c,0])
	    i += 1
	  end
	end
      end
    end
    return i
  end

  def printWorkingArray
# qa approved 2010-03-04
    @w.each do |w|
      print @l[w[0]][w[1]][w[2]]
      puts w[3]
    end
  end

  def chooseKanaFromWorkingArray
    i = rand(@w.length)
    print @l[@w[i][0]][@w[i][1]][@w[i][2]]
    resp = gets.chomp
    if (resp == @l[Romaji][@w[i][1]][@w[i][2]])
      puts "correct"
# add 1 to the correct count for this kana
      @w[i][3] += 1
# if correct count >= NumberToGetRight, delete this element from the list, tell the the user they mastered this kana
      if @w[i][3] >= NumberToGetRight
        puts "congratulations, you've mastered this kana!"
	@w.delete_at(i)
	puts @w.length
      end
    else
      puts "wrong"
# zero count for this kana
      @w[i][3] = 0
    end
  end

  def go
    while (@w.length > 0) do
      chooseKanaFromWorkingArray
    end
  end

  def printKanaTable
# qa approved 2010-03-04
    for r in (0..MaxRow)
      for c in (0..MaxCol)
        print @l[Hiragana][r][c] + @l[Katakana][r][c] + " "
      end
      puts
    end
  end

  def printRandomKana
# qa approved 2010-03-04
    p = rand(2)
    r = rand(11)
    c = rand(5)
    puts @l[p][r][c]
    if (isThisCharacterPrintable(@l[p][r][c]))
      puts "it is printable"
    else
      puts "it is NOT printable"
    end
  end
end

#	h = l[Hiragana][r][c]
# only add it to the working array if it's printable
#	print h[0] #always 227 (0xE3)
#	print h[1] #129 (0x81) to 130 (0x82)
#	print h[2] #130 (0x82) to 147 (0x93)
#	print h[3] #always nil
#	k = l[Katakana][r][c]
#	print k[0] #always 227 (0xE3)
#	print k[1] #130 (0x82) to 131 (0x83)
#	print k[2] #162 (0xA2) to 179 (0xB3)
#	print k[3] #always nil

# need a structure to keep track of remaining
# kana that need to be asked
# how about an array, which will keep a track of
# p, r, c of active kana + a count of correct answers
# first build the array but don't include any non-kana elements
# pick a random element of the array
# present it, have them guess update count
# if count = 5 prune it
# if len(array)=0, exit, else begin again

k = KanaQuizzer.new
k.printKanaTable
#k.printRandomKana
#k.makeWorkingArray
numKana = k.makeWorkingArray
#puts @w.length
#k.printWorkingArray
k.go

# open issues 2014-05-15
# works on at least ruby 1.8.7 and ruby 2.0.0
# on ruby 2, it prints out 'unprintable' characters

# TBD 2014-05-15
# record: letter, answer, and whether correct or not
# store these locally, but also offer to upload them
# on game start, offer to fetch kana that are hard
# make a list of confusing kana
