//
//  CalculatorView.h
//  calculator
//
//  Created by Yep on 2021/10/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorView : UIView
@property(nonatomic , strong)UIButton *zeroButton;
@property(nonatomic , strong)UIButton *oneButton;
@property(nonatomic , strong)UIButton *twoButton;
@property(nonatomic , strong)UIButton *threeButton;
@property(nonatomic , strong)UIButton *fourButton;
@property(nonatomic , strong)UIButton *fiveButton;
@property(nonatomic , strong)UIButton *sixButton;
@property(nonatomic , strong)UIButton *sevenButton;
@property(nonatomic , strong)UIButton *eightButton;
@property(nonatomic , strong)UIButton *nineButton;
@property(nonatomic , strong)UIButton *addButton;//加法按钮
@property(nonatomic , strong)UIButton *subtractButton;//减法按钮
@property(nonatomic , strong)UIButton *multiplyButton;//乘法按钮
@property(nonatomic , strong)UIButton *divisionButton;//除法按钮
@property(nonatomic , strong)UIButton *summationButton;//等于号
@property(nonatomic , strong)UIButton *pointButton;//点
@property(nonatomic , strong)UITextView *strView;
@property(nonatomic , strong)UIButton *acButton;
@property(nonatomic , strong)UIButton *leftButton;
@property(nonatomic , strong)UIButton *rightButton;
@property NSString *allString;
@property NSString *numbleString;
@end

NS_ASSUME_NONNULL_END
