
FUNPTR(void, MSHookFunction, void *symbol, void *replace, void **result) = NULL;
FUNPTR(void, MSHookMessageEx, Class _class, SEL sel, IMP imp, IMP *result) = NULL;

//
//MSGHOOK(BOOL, SBAssistantController__presentForMainScreenAnimated_completion, BOOL arg1, id arg2)
//{
//	NSLog(@"SBAssistantController__presentForMainScreenAnimated_completion:%d, %@", arg1, arg2);
//	return YES;
//} ENDHOOK

//
MSGHOOK(BOOL, SBAssistantController_uiPluginWantsActivation_forEvent_completion, id arg1, int arg2, id arg3)
{
	_LogStack();

	NSLog(@"SBAssistantController__presentForMainScreenAnimated_completion:%@, %d, %@", arg1, arg2, arg3);

	if (arg2 == 1)
	{
		//
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Disable Siri" message:@"Disable Siri!! Do something here." delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
		[alertView show];
		return NO;
	}

	return _SBAssistantController_uiPluginWantsActivation_forEvent_completion(self, sel, arg1, arg2, arg3);
} ENDHOOK

//
int main()
{
#if !DEBUG
	@autoreleasepool
#endif
	{
		// 信息
		NSProcessInfo *processInfo = NSProcessInfo.processInfo;
		NSString *processName = processInfo.processName;
		NSArray *arguments = processInfo.arguments;
		NSLog(@"Process(%@) ARGS(%@) UID(%d)", processName, arguments, geteuid());
//		if ([processName isEqualToString:@"SpringBoard"])
//		{
//			// 初始化函数指针
//			_PTRFUN(/Library/Frameworks/CydiaSubstrate.framework/CydiaSubstrate, MSHookFunction);
//			_PTRFUN(/Library/Frameworks/CydiaSubstrate.framework/CydiaSubstrate, MSHookMessageEx);
//
//			//
//			//_HOOKMSG(SBAssistantController__presentForMainScreenAnimated_completion, SBAssistantController,  _presentForMainScreenAnimated:completion:);
//			_HOOKMSG(SBAssistantController_uiPluginWantsActivation_forEvent_completion, SBAssistantController,  uiPluginWantsActivation:forEvent:completion:);
//		}
		[[[UIAlertView alloc] initWithTitle:@"哈哈" message:@"好了" delegate:nil cancelButtonTitle:@"好嘞" otherButtonTitles:nil] show];
	}
	return 0;
}

__attribute__((visibility("default")))
void SCNetworkReachabilityCreateWithAddress(int a)
{
	NSLog(@"SCNetworkReachabilityCreateWithAddress");

	return _SCNetworkReachabilityCreateWithAddress(a);
}

__attribute__((visibility("default")))
void SCNetworkReachabilityCreateWithName(float b, int a)
{
	NSLog(@"SCNetworkReachabilityCreateWithName");

	return _SCNetworkReachabilityCreateWithAddress(b, a);
}

__attribute__((visibility("default")))
void SCNetworkReachabilityGetFlags()
{
	NSLog(@"SCNetworkReachabilityGetFlags");

}

__attribute__((visibility("default")))
void SCNetworkReachabilityScheduleWithRunLoop()
{
	NSLog(@"SCNetworkReachabilityScheduleWithRunLoop");

}

__attribute__((visibility("default")))
void SCNetworkReachabilitySetCallback()
{
	NSLog(@"SCNetworkReachabilitySetCallback");

}

__attribute__((visibility("default")))
void SCNetworkReachabilitySetDispatchQueue()
{
	NSLog(@"SCNetworkReachabilitySetDispatchQueue");

}

__attribute__((visibility("default")))
void SCNetworkReachabilityUnscheduleFromRunLoop()
{
	NSLog(@"SCNetworkReachabilityUnscheduleFromRunLoop");

}


