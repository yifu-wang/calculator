//
//  CalculatorViewController.h
//  calculator
//
//  Created by Yep on 2021/10/5.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"
#import "CalculatorView.h"
NS_ASSUME_NONNULL_BEGIN

@interface CalculatorViewController : UIViewController
@property(nonatomic , strong)CalculatorModel *calculatorModel;
@property(nonatomic , strong)CalculatorView *calculatorView;
@property(nonatomic , strong)NSMutableString *str;
@property NSInteger count;
@property int sumFlag;
@end

NS_ASSUME_NONNULL_END
