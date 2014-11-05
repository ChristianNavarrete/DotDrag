//
//  HelloWorldLayer.h
//  DotDrag
//
//  Created by Christian Navarette on 11/3/14.
//  Copyright __MyCompanyName__ 2014. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer 
{
    
    CCSprite *background;
    CCSprite *title;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
