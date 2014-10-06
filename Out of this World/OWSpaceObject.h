//
//  OWSpaceObject.h
//  Out of this World
//
//  Created by Admin on 10/5/2557 BE.
//  Copyright (c) 2557 Bonaliza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OWSpaceObject : NSObject
@property (strong,nonatomic) NSString *name;
@property (nonatomic) float gravitaionalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong,nonatomic) NSString *nickname;
@property (strong,nonatomic) NSString *interestFact;

@property (strong,nonatomic) UIImage *spaceImage;

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image;


@end
