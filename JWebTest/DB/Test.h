//
//  Test.h
//  JWebTest
//
//  Created by Loulou on 16/9/19.
//  Copyright © 2016年 TongBinLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test : NSObject
/*
//
//  ViewController.m
//  JWebTest
//
//  Created by TongBinLi on 16/9/9.
//  Copyright © 2016年 TongBinLi. All rights reserved.
//

#import "ViewController.h"
#import "ItemList.h"

#define PERINPU_MONEY 300000
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    NSArray *allNumbers = [NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",nil];
    
    NSMutableArray *xiaodanArray = [NSMutableArray array];
    NSMutableArray *dadanArray = [NSMutableArray array];
    NSMutableArray *xiaoshuangArray = [NSMutableArray array];
    NSMutableArray *dashuangArray = [NSMutableArray array];
    
    
    NSArray *betArray = [NSArray array];
    betArray = [self getBetNumber:1];
    for (int i = 0; i < betArray.count; i++) {
        if ([betArray[i]  isEqual: @1]) {
            [dashuangArray addObject:allNumbers[i]];
        }
    }
    betArray = [self getBetNumber:2];
    for (int i = 0; i < betArray.count; i++) {
        if ([betArray[i]  isEqual: @1]) {
            [xiaoshuangArray addObject:allNumbers[i]];
        }
    }
    betArray = [self getBetNumber:3];
    for (int i = 0; i < betArray.count; i++) {
        if ([betArray[i]  isEqual: @1]) {
            [dadanArray addObject:allNumbers[i]];
        }
    }
    betArray = [self getBetNumber:4];
    for (int i = 0; i < betArray.count; i++) {
        if ([betArray[i]  isEqual: @1]) {
            [xiaodanArray addObject:allNumbers[i]];
        }
    }
    
    DisplayModel *mo = [[DisplayModel alloc]init];
    
    NSMutableArray *moneyCountArray = [NSMutableArray array];
    NSString *str;
    int j = 0;                      // 盈利次数
    ItemList *item1;                //下一把开奖信息
    static  NSInteger moneyCount;   //总盈利
    NSInteger perInputMoney;        //每把投入
    perInputMoney = PERINPU_MONEY;
    static NSInteger count;         //符合条件次数
    NSString *jcjg;                 //开奖结果
    for(int i = 0; i < mo.itemList.count; i++){
        ItemList *item = mo.itemList[i];
        if(i < mo.itemList.count - 1){
            item1 = mo.itemList[i+1];
            jcjg = mo.itemList[i+1].jcjg2;
        }
        if ((item.thirdNumber == 0 && ([xiaoshuangArray containsObject:jcjg])) ||
            (item.thirdNumber == 1 && ([xiaodanArray containsObject:jcjg])) ||
            (item.thirdNumber == 2 && ([xiaoshuangArray containsObject:jcjg])) ||
            (item.thirdNumber == 3 && ([xiaodanArray containsObject:jcjg])) ||
            (item.thirdNumber == 4 && ([xiaoshuangArray containsObject:jcjg])) ||
            (item.thirdNumber == 5 && ([dadanArray containsObject:jcjg])) ||
            (item.thirdNumber == 6 && ([dashuangArray containsObject:jcjg])) ||
            (item.thirdNumber == 7 && ([dadanArray containsObject:jcjg])) ||
            (item.thirdNumber == 8 && ([dashuangArray containsObject:jcjg])) ||
            (item.thirdNumber == 9 && ([dadanArray containsObject:jcjg]))) {
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
    //    开奖结果排序
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
    
    NSLog(@"%ld~%ld", [[moneyCountArray firstObject] integerValue], [[moneyCountArray lastObject] integerValue]);
}

-(NSArray *)getBetNumber:(NSInteger)betIndex{
    //    0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27
    switch (betIndex) {
            
            
            //@"大  +  双",
        case 1:{
            return @[@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //@"小  +  双",
        case 2:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0];
        }break;
            
            //@"大  +  单",
        case 3:{
            return @[@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"小  +  单",
        case 4:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1];
        }break;
            
            //     @"8  -  19",
        case 5:{
            return @[@0,@0,@0,@0,@0,@0,@0,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@0,@0,@0,@0,@0,@0,@0];
        }break;
            
            //     @"去  0  尾",
        case 6:{
            return @[@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"去  1  尾",
        case 7:{
            return @[@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1];
        }break;
            //     @"去  2  尾",
        case 8:{
            return @[@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1];
        }break;
            //     @"去  3  尾",
        case 9:{
            return @[@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1];
        }break;
            //     @"去  4  尾",
        case 10:{
            return @[@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1];
        }break;
            //     @"去  5  尾",
        case 11:{
            return @[@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1];
        }break;
            //     @"去  6  尾",
        case 12:{
            return @[@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1];
        }break;
            //     @"去  7  尾",
        case 13:{
            return @[@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0];
        }break;
            //     @"去  8  尾",
        case 14:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            //     @"去  9  尾",
        case 15:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"去 单 边 小",
        case 16:{
            return @[@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            //     @"去 单 边 大",
        case 17:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0];
        }break;
            
            //     @"去 双 边 小",
        case 18:{
            return @[@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"去 双 边 大",
        case 19:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1];
        }break;
            
            //     @"去 单 中 小",
        case 20:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"去 单 中 大",
        case 21:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"去 双 中 小",
        case 22:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            
            //     @"去 双 中 大",
        case 23:{
            return @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        }break;
            //
            //     @"去 3 余 0",
        case 24:{
            return @[@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0];
        }break;
            
            //     @"去 3 余 1",
        case 25:{
            return @[@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1];
        }break;
            
            //     @"去 3 余 2",
        case 26:{
            return @[@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1,@1,@0,@1];
        }break;
            
            //     @"去 4 余 0",
        case 27:{
            return @[@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1];
        }break;
            
            //     @"去 4 余 1",
        case 28:{
            return @[@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1];
        }break;
            
            //     @"去 4 余 2",
        case 29:{
            return @[@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1];
        }break;
            
            //     @"去 4 余 3",
        case 30:{
            return @[@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0];
        }break;
            
            //     @"去 5 余 0",
        case 31:{
            return @[@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1];
        }break;
            
            //     @"去 5 余 1",
        case 32:{
            return @[@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1];
        }break;
            
            //     @"去 5 余 2",
        case 33:{
            return @[@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0];
        }break;
            
            //     @"去 5 余 3",
        case 34:{
            return @[@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1];
        }break;
            
            //     @"去 5 余 4",
        case 35:{
            return @[@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1,@1,@0,@1,@1,@1];
        }break;
            
        default:
            break;
    }
    
    return nil;
}

//-(void)viewDidAppear:(BOOL)animated{
//
//    [super viewDidAppear:animated];
//
//    DisplayModel *mo = [[DisplayModel alloc]init];
//    NSMutableArray *jcjg2 = [NSMutableArray array];
//    for (NSInteger i = 0; i<mo.itemList.count - 1; i++) {
//
//        ItemList *item = mo.itemList[i];
//        [mo isCorrect:0 item:i];
//
//        [jcjg2 addObject:item.jcjg2];
////        NSLog(@"期号:%@ 开奖号码:%@%@",item.num,item.jcjg1,item.jcjg2);
//
//    }
//    __block NSInteger i = 0;
//    __block NSInteger j = 0;
//    [jcjg2 enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
//        if ([obj isEqualToString:@"12"] || [obj isEqualToString:@"13"]) {
//            i ++;
//            NSLog(@"%@-索引%d",obj, (int)idx);
//        }
//        j++;
//    }];
//    NSLog(@"中%ld",(long)i);
//    NSLog(@"总的%ld",(long)j);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
*/
@end
