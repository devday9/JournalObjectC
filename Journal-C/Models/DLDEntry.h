//
//  DLDEntry.h
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLDEntry : NSObject

@property(nonatomic, copy)NSDate *timestamp;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *bodyText;

- (instancetype) initWithTitle:(NSString *)title
                      bodyText:(NSString *)bodyText;
@end

NS_ASSUME_NONNULL_END
