//
//  CalculatorModel.h
//  calculator
//
//  Created by Yep on 2021/10/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorModel : NSObject
@property NSMutableArray *tempArray;
@property NSMutableArray *allArray;


- (void)PushInto:(NSString *)str;
- (void)PushIntoSymol:(NSString *)symol;
- (void)PushOffSymol:(NSString *)symol;
- (NSInteger)Compare:(NSString*)str;
- (float)Transform:(NSString*)str;
@end

NS_ASSUME_NONNULL_END
