//
//  DLDEntryViewController.h
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import <UIKit/UIKit.h>
#import "DLDEntry.h"
#import "DLDEntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DLDEntryViewController : UIViewController
// MARK: - Outlets
@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *entryTextBodyView;

//MARK: - Properties
@property(nonatomic)DLDEntry *entry;

// MARK: - Actions
- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)clearButtonTapped:(id)sender;


@end

NS_ASSUME_NONNULL_END
