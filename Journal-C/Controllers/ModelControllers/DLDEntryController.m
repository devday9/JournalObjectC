//
//  DLDEntryController.m
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import "DLDEntryController.h"
#import "DLDEntry.h"

@implementation DLDEntryController

+ (DLDEntryController *)shared
{
    static DLDEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [DLDEntryController new];
    });
    
    return sharedInstance;
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc]init];
    }
    return self;
}

// MARK: - CRUD FUNCTIONS
- (void)addEntryWithTitle:(NSString *)title BodyText:(NSString *)bodyText
{
    DLDEntry *newEntry = [[DLDEntry alloc] initWithTitle:title bodyText:bodyText];
    
    [_entries addObject:newEntry];
}

- (void)removeEntry:(DLDEntry *)entry
{
    [_entries removeObject:entry];
        
}

- (void)updateEntry:(DLDEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timestamp = [NSDate date];
}

@end


