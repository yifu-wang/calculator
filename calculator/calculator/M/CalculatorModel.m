//
//  CalculatorModel.m
//  calculator
//
//  Created by Yep on 2021/10/3.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

- (void)PushInto:(NSString *)str {
    if (([str isEqualToString:@"("]) || ([str isEqualToString:@")"])) {
        return;
    }
    if ([str isEqualToString:@"nil"]) {
        [_allArray addObject:_tempArray[[_tempArray count] - 1]];
        [_tempArray removeObjectAtIndex:([_tempArray count] - 1)];
    } else {
        [_allArray addObject:str];
    }
}

- (void)PushIntoSymol:(NSString *)symol {
    [_tempArray addObject:symol];
}

- (void)PushOffSymol:(NSString *)symol {
    [_tempArray removeObjectAtIndex:([_tempArray count] - 1)];
}

- (NSInteger)Compare:(NSString *)str {
    NSMutableArray *symolarray = [[NSMutableArray alloc] initWithObjects:@"(",@"+",@"-",@"*",@"/",@")", nil];
    for (int i = 0; i < [symolarray count]; i++) {
        if ([_tempArray[[_tempArray count] - 1] isEqualToString:symolarray[i]]) {
            return 1;
        }
        if ([str isEqualToString:symolarray[i]]) {
            return 0;
        }
    }
    return 0;
}
- (float)Transform:(NSString *)str {
    int flag = 0;
    float sum = 0, temp = 0, t = 0.0;
    temp = (int)[str characterAtIndex:0] - 48;
    if ([str length] > 1){
        for (int i = 1; i < [str length]; i++) {
            if ([str characterAtIndex:i] == '.') {
                sum +=temp;
                temp = 0.1 * ((int)[str characterAtIndex:++i] - 48);
                t = 0.01;
                flag = 1;
                continue;
            } else {
                if (flag == 0) {
                    temp = temp * 10 + ((int)[str characterAtIndex:i] - 48);
                } else {
                    temp = temp + t * ((int)[str characterAtIndex:i] - 48);
                    t = 0.1 * t;
                }
            }
        }
        sum += temp;
        
    } else {
        sum = (int)[str characterAtIndex:0] - 48;
    }
    return sum;
}


@end
