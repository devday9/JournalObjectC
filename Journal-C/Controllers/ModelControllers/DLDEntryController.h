//
//  DLDEntryController.h
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import <Foundation/Foundation.h>
#import "DLDEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DLDEntryController : NSObject

// Mark: - Properties
+ (DLDEntryController *) shared;
@property (nonatomic, strong)NSMutableArray *entries;

// Mark: - CRUD Functions
-(void)addEntryWithTitle:(NSString *)title
                BodyText:(NSString *)bodyText;

- (void)removeEntry:(DLDEntry *)entry;

- (void)updateEntry:(DLDEntry *)entry
              title:(NSString *)title
           bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
