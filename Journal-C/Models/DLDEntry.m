//
//  DLDEntry.m
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import "DLDEntry.h"

@implementation DLDEntry

- (instancetype)initWithTitle:(NSString *)title
                     bodyText:(NSString *)bodyText
{
    self = [super init];
    
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [NSDate date];
    }
    
    return self;
}

@end
