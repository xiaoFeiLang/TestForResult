//
//  ItemList.m
//  JWebTest
//
//  Created by TongBinLi on 16/9/9.
//  Copyright © 2016年 TongBinLi. All rights reserved.
//

#import "ItemList.h"

@implementation DisplayModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.itemList = [ItemList findAll];
    }
    return self;
}

-(BOOL)isCorrect:(NSInteger)index item:(NSInteger)item{
    
    ItemList *nextItem = self.itemList[item+1];
    ItemList *selfItem = self.itemList[item];
    NSInteger number = 0;
    switch (index) {    // (大小单双)第一个小标, 第二个小标, 第三个下标; (4余)第一个下标, 第二个下标, 第三个下标;
        case 0:
            number = nextItem.firstNumber;
            break;
        case 1:
            number = nextItem.secondNumber;
            break;
        case 2:
            number = nextItem.thirdNumber;
            break;
            
        case 3:{
            
            number = [selfItem.jcjg2 integerValue];
            return nextItem.firstNumber % 4 != number % 4;
        }
        case 4:{
            
            number = [selfItem.jcjg2 integerValue];
            return nextItem.secondNumber % 4 != number % 4;
        }
        case 5:{
            
            number = [selfItem.jcjg2 integerValue];
            return nextItem.thirdNumber % 4 != number % 4;
        }
        default:
            break;
    }
    
    BOOL isDouble = number % 2 == 0;
    BOOL isBig = index < 3 ? number > 4 : number > 13;
    
    BOOL isResultDouble = [selfItem.jcjg2 integerValue] % 2 == 0;
    BOOL isResultBig = [selfItem.jcjg2 integerValue] > 13;
    
    return isDouble == isResultDouble || isBig == isResultBig;
}

-(NSInteger)index:(NSInteger)index{
    
    // (大小单双)第一个小标, 第二个小标, 第三个下标; (4余)第一个下标, 第二个下标, 第三个下标;
    NSInteger number = 0;
    ItemList *nextItem = self.itemList[0];
    switch (index) {
        case 0:
            number = nextItem.firstNumber;
            break;
        case 1:
            number = nextItem.secondNumber;
            break;
        case 2:
            number = nextItem.thirdNumber;
            break;
        case 3:
            number = nextItem.firstNumber % 4;
            break;
        case 4:
            number = nextItem.secondNumber % 4;
            break;
        case 5:
            number = nextItem.thirdNumber % 4;
            break;
            
        default:
            break;
    }
    
    if (index <= 2) {
        
        BOOL isDouble = number % 2 == 0;
        BOOL isBig = index < 3 ? number > 4 : number > 13;
        //1: 大双, 2:小双, 3:大单 4:小单
        if (isDouble) {
            if (isBig)
                return 1;
            return 2;
        }else{
            
            if (isBig)
                return 3;
            return 4;
        }
    }else{
        
        return number + 27;
    }
    
}
@end

@implementation ItemList

@end
