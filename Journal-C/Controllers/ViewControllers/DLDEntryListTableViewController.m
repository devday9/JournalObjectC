//
//  DLDEntryListTableViewController.m
//  Journal-C
//
//  Created by Deven Day on 9/28/20.
//

#import "DLDEntryListTableViewController.h"
#import "DLDEntryController.h"
#import "DLDEntryViewController.h"
#import "DLDEntry.h"

@interface DLDEntryListTableViewController ()

@end

@implementation DLDEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return DLDEntryController.shared.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"journalCell" forIndexPath:indexPath];
    
    DLDEntry *entry = DLDEntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        DLDEntry *entry = DLDEntryController.shared.entries[indexPath.row];
        [DLDEntryController.shared removeEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }   
}

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        DLDEntryViewController *destination = segue.destinationViewController;
        destination.entry = entry;
    }
}

@end
