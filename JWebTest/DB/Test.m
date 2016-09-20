//
//  Test.m
//  JWebTest
//
//  Created by Loulou on 16/9/19.
//  Copyright © 2016年 TongBinLi. All rights reserved.
//

#import "Test.h"

@implementation Test
/* 小单
 -(void)viewDidAppear:(BOOL)animated{
 
 [super viewDidAppear:animated];
 
 DisplayModel *mo = [[DisplayModel alloc]init];
 
 NSMutableArray *moneyCountArray = [NSMutableArray array];
 NSString *str;
 int j = 0;
 ItemList *item1;
 static  NSInteger moneyCount;   //总盈利
 NSInteger perInputMoney;  //每把投入
 perInputMoney = PERINPU_MONEY;
 static NSInteger count;
 for(int i = 0; i < mo.itemList.count; i++){
 ItemList *item = mo.itemList[i];
 if(i < mo.itemList.count - 1){
 item1 = mo.itemList[i+1];
 }
 //        第三个数
 if ((item.thirdNumber == 0 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"26"])) ||
 (item.thirdNumber == 1 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"27"])) ||
 (item.thirdNumber == 2 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"26"])) ||
 (item.thirdNumber == 3 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"27"])) ||
 (item.thirdNumber == 4 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"26"])) ||
 (item.thirdNumber == 5 && ([item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"26"] ||
 [item1.jcjg2 isEqualToString:@"27"])) ||
 (item.thirdNumber == 6 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"26"] ||
 [item1.jcjg2 isEqualToString:@"27"])) ||
 (item.thirdNumber == 7 && ([item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"26"] ||
 [item1.jcjg2 isEqualToString:@"27"])) ||
 (item.thirdNumber == 8 && ([item1.jcjg2 isEqualToString:@"0"] ||
 [item1.jcjg2 isEqualToString:@"2"] ||
 [item1.jcjg2 isEqualToString:@"4"] ||
 [item1.jcjg2 isEqualToString:@"6"] ||
 [item1.jcjg2 isEqualToString:@"8"] ||
 [item1.jcjg2 isEqualToString:@"10"] ||
 [item1.jcjg2 isEqualToString:@"12"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"26"] ||
 [item1.jcjg2 isEqualToString:@"27"])) ||
 (item.thirdNumber == 9 && ([item1.jcjg2 isEqualToString:@"1"] ||
 [item1.jcjg2 isEqualToString:@"3"] ||
 [item1.jcjg2 isEqualToString:@"5"] ||
 [item1.jcjg2 isEqualToString:@"7"] ||
 [item1.jcjg2 isEqualToString:@"9"] ||
 [item1.jcjg2 isEqualToString:@"11"] ||
 [item1.jcjg2 isEqualToString:@"13"] ||
 [item1.jcjg2 isEqualToString:@"14"] ||
 [item1.jcjg2 isEqualToString:@"15"] ||
 [item1.jcjg2 isEqualToString:@"16"] ||
 [item1.jcjg2 isEqualToString:@"17"] ||
 [item1.jcjg2 isEqualToString:@"18"] ||
 [item1.jcjg2 isEqualToString:@"19"] ||
 [item1.jcjg2 isEqualToString:@"20"] ||
 [item1.jcjg2 isEqualToString:@"21"] ||
 [item1.jcjg2 isEqualToString:@"22"] ||
 [item1.jcjg2 isEqualToString:@"23"] ||
 [item1.jcjg2 isEqualToString:@"24"] ||
 [item1.jcjg2 isEqualToString:@"25"] ||
 [item1.jcjg2 isEqualToString:@"26"] ||
 [item1.jcjg2 isEqualToString:@"27"]))) {
 str =  @"中";
 moneyCount += perInputMoney * 1/3;
 [moneyCountArray addObject:[NSNumber numberWithInteger:moneyCount]];
 
 perInputMoney = perInputMoney * 2;
 
 count ++;
 if (count == 2) {
 perInputMoney = PERINPU_MONEY;
 count = 0;
 }
 
 
 j++;
 } else {
 str =  @"不中" ;
 moneyCount -= perInputMoney;
 [moneyCountArray addObject:[NSNumber numberWithInteger:moneyCount]];
 perInputMoney = PERINPU_MONEY;
 }
 
 NSLog(@"期号:%@ 开奖号码:%@%@  --- 下一条%@  %ld %ld",item.num,item.jcjg1,item.jcjg2,str,perInputMoney,moneyCount);
 }
 NSLog(@"中%d",j);
 NSLog(@"总%ld",mo.itemList.count);
 [moneyCountArray sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
 int aNum = [obj1 intValue];
 int bNum = [obj2 intValue];
 
 if (aNum > bNum) {
 return NSOrderedDescending;
 }
 else if (aNum < bNum){
 return NSOrderedAscending;
 }
 else {
 return NSOrderedSame;
 }
 }];
 
 NSLog(@"%ld~~~%ld", [[moneyCountArray firstObject] integerValue], [[moneyCountArray lastObject] integerValue]);
 }
 */
@end
