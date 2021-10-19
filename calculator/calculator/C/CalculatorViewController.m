//
//  CalculatorViewController.m
//  calculator
//
//  Created by Yep on 2021/10/5.
//

#import "CalculatorViewController.h"
#import "Masonry.h"
@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _calculatorView = [[CalculatorView alloc] init];
    [self.view addSubview:_calculatorView];
    [_calculatorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.left.equalTo(self.view);
        make.width.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
    
    _str = [[NSMutableString alloc] init];
    _calculatorModel = [[CalculatorModel alloc] init];
    _calculatorModel.tempArray = [[NSMutableArray alloc] init];
    _calculatorModel.allArray = [[NSMutableArray alloc] init];
    
    _sumFlag = 0;
    
    [_calculatorView.zeroButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.oneButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.twoButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.threeButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.fourButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.fiveButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.sixButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.sevenButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.eightButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.nineButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.addButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.subtractButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.multiplyButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.divisionButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.pointButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.summationButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.acButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.leftButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    [_calculatorView.rightButton addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)error {
    [_calculatorModel.tempArray removeAllObjects];
    [_calculatorModel.allArray removeAllObjects];
    _calculatorView.numbleString = @"";
    _calculatorView.strView.text = @"错误";
    _calculatorView.allString = @"";
}

- (void)press:(UIButton *)btn {
    if (_sumFlag != 0) {
        _calculatorModel.allArray[0] = [NSString stringWithFormat:@"%d",_sumFlag];
        _calculatorView.allString = _calculatorModel.allArray[0];
       
    }
    _calculatorView.allString = [_calculatorView.allString stringByAppendingString:btn.titleLabel.text];
    _calculatorView.strView.text = _calculatorView.allString;
   
    
    if ((btn.tag >= 0) && (btn.tag <= 10)) {
        NSString *str = btn.titleLabel.text;
        _calculatorView.numbleString = [_calculatorView.numbleString stringByAppendingString:str];
        if ([btn.titleLabel.text isEqualToString:@"."]) {
            _count++;
        }
    }
    
    if ((btn.tag >= 11) && (btn.tag < 18)) {

        if ([_calculatorView.numbleString length] != 0) {
            if (([_calculatorView.numbleString characterAtIndex:[_calculatorView.numbleString length] - 1] == '.') || ([_calculatorView.numbleString characterAtIndex:0] == '.') || (_count > 1)) {
                _count = 0;
                [self error];
        } else {
            [_calculatorModel PushInto:_calculatorView.numbleString];
            _calculatorView.numbleString = @"";
            _count = 0;
                
        }
    }
    if ([_calculatorModel.tempArray count] == 0) {
        if ([btn.titleLabel.text isEqualToString:@")"]) {
            [self error];
        } else {
            [_calculatorModel PushIntoSymol:btn.titleLabel.text];
        }
    } else {
        if ([_calculatorModel Compare:btn.titleLabel.text] == 0) {
            if ([btn.titleLabel.text isEqualToString:@"("]) {
                [_calculatorModel PushIntoSymol:btn.titleLabel.text];
            } else {
                [_calculatorModel PushInto:@"nil"];
                [_calculatorModel PushIntoSymol:btn.titleLabel.text];
            }
        } else {
            if ([btn.titleLabel.text isEqualToString:@")"]) {
            for (int i = (int)[_calculatorModel.tempArray count] - 1; ; i--){
                if ([_calculatorModel.tempArray[i] isEqualToString:@"("]) {
                    while (1) {
                        if ([_calculatorModel.tempArray count] == i + 1) {
                            break;
                        }
                        [_calculatorModel.allArray addObject:_calculatorModel.tempArray[i + 1]];
                        [_calculatorModel.tempArray removeObjectAtIndex:i + 1];
                    }
                    [_calculatorModel.tempArray removeObjectAtIndex:i];
                    break;
                }
                if (i == 0) {
                    [self error];
                    break;
                }
        }
    } else {
        [_calculatorModel PushIntoSymol:btn.titleLabel.text];
            }
        }
    }
    
}
    if (btn.tag == 15) {
        [_calculatorModel.tempArray removeAllObjects];
        [_calculatorModel.allArray removeAllObjects];
        _calculatorView.numbleString = @"";
        _calculatorView.strView.text = @"0";
        _calculatorView.allString = @"";
        _sumFlag = 0;
}
    if (btn.tag == 100) {
        if ([_calculatorView.numbleString length] != 0) {
            [_calculatorModel PushInto:_calculatorView.numbleString];
        }
        while ([_calculatorModel.tempArray count] != 0) {
            [_calculatorModel PushInto:@"nil"];
        }
        while (1) {
            NSInteger flag = 0;
            for (int i = 0; i < [_calculatorModel.allArray count]; i++) {
                if (([_calculatorModel.allArray[i] isEqualToString:@"+"]) || ([_calculatorModel.allArray[i] isEqualToString:@"-"]) || ([_calculatorModel.allArray[i] isEqualToString:@"*"]) || ([_calculatorModel.allArray[i] isEqualToString:@"/"])){
                    if (i <= 1) {
                        [self error];
                        flag = 1;
                        break;
                    } else {
                        float number1 = [_calculatorModel Transform:_calculatorModel.allArray[i - 2]];
                        float number2 = [_calculatorModel Transform:_calculatorModel.allArray[i - 1]];
                        
                      
                        if ([_calculatorModel.allArray[i] isEqualToString:@"+"]) {
                                _calculatorModel.allArray[i] = [NSString stringWithFormat: @"%f", number1 + number2];
                        }
                        if ([_calculatorModel.allArray[i] isEqualToString:@"-"]) {
                            _calculatorModel.allArray[i] = [NSString stringWithFormat: @"%f", number1 - number2];
                        }
                        if ([_calculatorModel.allArray[i] isEqualToString:@"*"]) {
                            _calculatorModel.allArray[i] = [NSString stringWithFormat: @"%f", number1 * number2];
                        }
                        if ([_calculatorModel.allArray[i] isEqualToString:@"/"]) {
                            if (number2 == 0) {
                                [self error];
                                flag = 1;
                                break;
                            }
                           
                            _calculatorModel.allArray[i] = [NSString stringWithFormat: @"%f", number1 / number2];
                           
                        }
                        [_calculatorModel.allArray removeObjectAtIndex: i - 1];
                        [_calculatorModel.allArray removeObjectAtIndex: i - 2];
                        break;
                    }
                        
                }
                if (i == [_calculatorModel.allArray count] - 1) {
                    if ([_calculatorModel.allArray count] == 1) {
                        break;
                    } else {
                        [self error];
                        flag = 1;
                    }
                }
            }
            if (flag == 1) {
                break;
            }
            if ([_calculatorModel.allArray count] == 1) {
                _sumFlag = [_calculatorModel.allArray[0] intValue];

                _calculatorView.strView.text = [self removeFloatAllZeroByString:_calculatorModel.allArray[0]];
                [_calculatorModel.tempArray removeAllObjects];
                [_calculatorModel.allArray removeAllObjects];
                _calculatorView.numbleString = @"";
                _calculatorView.allString = @"";
                break;
            }
        }
    }
    
    
}


- (NSString*)removeFloatAllZeroByString:(NSString *)testNumber{
    NSString *outNumber = [NSString stringWithFormat:@"%@",@(testNumber.doubleValue)];
    return outNumber;
}

@end
