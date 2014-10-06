//
//  OWSpaceDataViewController.m
//  Out of this World
//
//  Created by Nutkritta Thanachaikosol on 10/6/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import "OWSpaceDataViewController.h"

@interface OWSpaceDataViewController ()

@end

@implementation OWSpaceDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath ];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Nickname :";
            cell.detailTextLabel.text = self.spaceObject.nickname;
            break;
        case 1:
            cell.textLabel.text = @"Diameter :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.diameter];
            break;
        case 2:
            cell.textLabel.text = @"Gravitation Force :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.gravitaionalForce];
            break;
        case 3:
            cell.textLabel.text = @"Length of a Year (Day) :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.yearLength];
            break;
        case 4:
            cell.textLabel.text = @"Length of a Day (Hour) :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.dayLength];
            break;
        case 5:
            cell.textLabel.text = @"Temperature (Celcious) :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.temperature];
            break;
        case 6:
            cell.textLabel.text = @"Number of moons :";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%i",self.spaceObject.numberOfMoons];
            break;
        case 7:
            cell.textLabel.text = @"Interest Face :";
            cell.detailTextLabel.text = self.spaceObject.interestFact;
            break;
        default:
            break;
    }
    return cell;
    

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
