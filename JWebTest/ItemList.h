//
//  ItemList.h
//  JWebTest
//
//  Created by TongBinLi on 16/9/9.
//  Copyright © 2016年 TongBinLi. All rights reserved.
//

#import "JKDBModel.h"

@interface ItemList : JKDBModel

@property(strong, nonatomic) NSString *num;
@property(strong, nonatomic) NSString *date;
@property(assign, nonatomic) BOOL iskj;
@property(strong, nonatomic) NSString *jcjg1;
@property(strong, nonatomic) NSString *jcjg2;
@property(strong, nonatomic) NSString *udcount;
@property(strong, nonatomic) NSString *rcount;
@property(assign, nonatomic) NSInteger shou;
@property(assign, nonatomic) NSInteger jing;
@property(assign, nonatomic) NSInteger state;

//0: 1:win -1:lose
@property(assign, nonatomic) NSInteger isWin;

//private
@property(strong, nonatomic) NSString *begIndex;
@property(strong, nonatomic) NSString *selectIndex;
@property(assign, nonatomic) NSInteger firstNumber;
@property(assign, nonatomic) NSInteger secondNumber;
@property(assign, nonatomic) NSInteger thirdNumber;
@property(assign, nonatomic) NSInteger fourthNumber;
@end

@interface DisplayModel : NSObject

@property(strong, nonatomic) NSArray<__kindof ItemList *> *itemList;

-(BOOL)isCorrect:(NSInteger)index item:(NSInteger)item;
-(NSInteger)index:(NSInteger)index;
@end