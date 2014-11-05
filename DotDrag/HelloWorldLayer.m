//
//  HelloWorldLayer.m
//  DotDrag
//
//  Created by Christian Navarette on 11/3/14.
//  Copyright __MyCompanyName__ 2014. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - HelloWorldLayer

// HelloWorldLayer implementation
@implementation HelloWorldLayer

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	HelloWorldLayer *layer = [HelloWorldLayer node];
	[scene addChild: layer];
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
		      
        

        self.isTouchEnabled = YES;
        
        CGSize screenSize = [[CCDirector sharedDirector] winSize];
        background = [CCSprite spriteWithFile:@"DotDragBG-01.png"];
        background.anchorPoint = ccp(0,0);
        [self addChild:background];
        background.position = ccp(0,0);
        
        title = [CCSprite spriteWithFile:@"title.png"];
        title.anchorPoint = ccp(0,0);
        [self addChild:title z:1];
        title.position = ccp(screenSize.width / 2 - 100,screenSize.height/2 - 100);
        
        CCMenuItem *play = [CCMenuItemImage itemWithNormalImage:@"play.png" selectedImage:@"playPressed.png" target:self selector:@selector(playPressed:)];
        play.position = ccp(220, 80);
        
        CCMenuItem *gamecenter = [CCMenuItemImage itemWithNormalImage:@"gamecenter.png" selectedImage:@"gamecenterPressed.png" target:self selector:@selector(gamecenterPressed)];
        gamecenter.position = ccp(220, 30);
        
        
        CCMenu *menu = [CCMenu menuWithItems:play,gamecenter, nil ];
        menu.position = CGPointZero;
        [self addChild:menu];
	}
	return self;
}

-(void)gamecenterPressed {
    
}

-(void)playPressed {
    
}



@end
