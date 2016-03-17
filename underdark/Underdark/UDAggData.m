/*
 * Copyright (c) 2016 Vladimir L. Shabanov <virlof@gmail.com>
 *
 * Licensed under the Underdark License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://underdark.io/LICENSE.txt
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "UDAggData.h"

#import "UDAggLink.h"

@implementation UDAggData
{
	id<UDData> _Nonnull _data;
}

- (nonnull instancetype) initWithData:(nonnull id<UDData>)data delegate:(nullable id<UDAggDataDelegate>)delegate
{
	if(!(self = [super init]))
		return self;
	
	_data = data;
	[_data acquire];
	
	_delegate = delegate;

	return self;
}

- (void) acquire
{
	[super acquire];
	[_data acquire];
}

- (void) giveup
{
	[_data giveup];
	[super giveup];
}

- (void) dispose
{
	[_delegate dataDisposed:self];
}

- (void) retrieve:(UDDataRetrieveBlock _Nonnull)completion
{
	[_data retrieve:^(NSData * _Nullable data) {
		// Any thread.
		completion(data);
	}];
}

@end
