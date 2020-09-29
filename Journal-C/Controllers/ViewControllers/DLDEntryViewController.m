//
//  DLDEntryViewController.m
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import "DLDEntryViewController.h"

@interface DLDEntryViewController ()

@end

@implementation DLDEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Properties

- (void)setEntry:(DLDEntry *)entry
{
    if (entry != _entry) {
        _entry = entry;
        [self updateViews];
    }
}

#pragma mark - Helper Functions Methods

- (void)updateViews
{
    if (self) {
        
        self.entryTitleTextField.text = self.entry.title;
        self.entryTextBodyView.text = self.entry.bodyText;
    }
}

- (IBAction)entryTitleTextField:(id)sender {
}
- (IBAction)clearButtonTapped:(id)sender {
}

- (IBAction)saveButtonTapped:(id)sender {
}
@end
