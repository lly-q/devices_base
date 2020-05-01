.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_activityDestroyed:I = 0x3a

.field static final TRANSACTION_activityIdle:I = 0xf

.field static final TRANSACTION_activityPaused:I = 0x10

.field static final TRANSACTION_activityRelaunched:I = 0x102

.field static final TRANSACTION_activityResumed:I = 0x23

.field static final TRANSACTION_activitySlept:I = 0x79

.field static final TRANSACTION_activityStopped:I = 0x11

.field static final TRANSACTION_addAppLockerPassedPackage:I = 0x139

.field static final TRANSACTION_addAppTask:I = 0xd0

.field static final TRANSACTION_addInstrumentationResults:I = 0x28

.field static final TRANSACTION_addPackageDependency:I = 0x5d

.field static final TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x131

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xb8

.field static final TRANSACTION_attachApplication:I = 0xe

.field static final TRANSACTION_backgroundWhitelistUid:I = 0x12a

.field static final TRANSACTION_backupAgentCreated:I = 0x59

.field static final TRANSACTION_bindBackupAgent:I = 0x58

.field static final TRANSACTION_bindService:I = 0x20

.field static final TRANSACTION_bootAnimationComplete:I = 0xd4

.field static final TRANSACTION_broadcastIntent:I = 0xb

.field static final TRANSACTION_cancelIntentSender:I = 0x3c

.field static final TRANSACTION_cancelRecentsAnimation:I = 0xc5

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x123

.field static final TRANSACTION_checkGrantUriPermission:I = 0x75

.field static final TRANSACTION_checkPermission:I = 0x31

.field static final TRANSACTION_checkPermissionWithToken:I = 0xd8

.field static final TRANSACTION_checkUriPermission:I = 0x32

.field static final TRANSACTION_clearApplicationUserData:I = 0x4c

.field static final TRANSACTION_clearGrantedUriPermissions:I = 0x108

.field static final TRANSACTION_clearPendingBackup:I = 0xa0

.field static final TRANSACTION_closeSystemDialogs:I = 0x5f

.field static final TRANSACTION_convertFromTranslucent:I = 0xaf

.field static final TRANSACTION_convertToTranslucent:I = 0xb0

.field static final TRANSACTION_crashApplication:I = 0x70

.field static final TRANSACTION_createStackOnDisplay:I = 0xdc

.field static final TRANSACTION_dismissKeyguard:I = 0x121

.field static final TRANSACTION_dismissPip:I = 0xf6

.field static final TRANSACTION_dismissSplitScreenMode:I = 0xf5

.field static final TRANSACTION_dumpHeap:I = 0x76

.field static final TRANSACTION_dumpHeapFinished:I = 0xe2

.field static final TRANSACTION_enterPictureInPictureMode:I = 0xff

.field static final TRANSACTION_enterSafeMode:I = 0x40

.field static final TRANSACTION_exitFreeformMode:I = 0xf2

.field static final TRANSACTION_finishActivity:I = 0x8

.field static final TRANSACTION_finishActivityAffinity:I = 0x92

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x6b

.field static final TRANSACTION_finishInstrumentation:I = 0x29

.field static final TRANSACTION_finishReceiver:I = 0xd

.field static final TRANSACTION_finishSubActivity:I = 0x1c

.field static final TRANSACTION_finishVoiceTask:I = 0xcb

.field static final TRANSACTION_forceStopPackage:I = 0x4d

.field static final TRANSACTION_getActivityClassForToken:I = 0x2d

.field static final TRANSACTION_getActivityDisplayId:I = 0xba

.field static final TRANSACTION_getActivityOptions:I = 0xc7

.field static final TRANSACTION_getAggregateNext:I = 0x137

.field static final TRANSACTION_getAllStackInfos:I = 0xab

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0xd1

.field static final TRANSACTION_getAppTasks:I = 0xc8

.field static final TRANSACTION_getAssistContextExtras:I = 0xa2

.field static final TRANSACTION_getCallingActivity:I = 0x13

.field static final TRANSACTION_getCallingPackage:I = 0x12

.field static final TRANSACTION_getConfiguration:I = 0x2a

.field static final TRANSACTION_getContentProvider:I = 0x19

.field static final TRANSACTION_getContentProviderExternal:I = 0x8a

.field static final TRANSACTION_getCurrentUser:I = 0x8e

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x52

.field static final TRANSACTION_getFilteredTasks:I = 0x15

.field static final TRANSACTION_getFocusedStackInfo:I = 0xad

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x7a

.field static final TRANSACTION_getGrantedUriPermissions:I = 0x107

.field static final TRANSACTION_getIntentForIntentSender:I = 0xa1

.field static final TRANSACTION_getIntentSender:I = 0x3b

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x129

.field static final TRANSACTION_getLaunchedFromPackage:I = 0xa4

.field static final TRANSACTION_getLaunchedFromUid:I = 0x93

.field static final TRANSACTION_getLockTaskModeState:I = 0xe0

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0x101

.field static final TRANSACTION_getMemoryInfo:I = 0x4a

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x113

.field static final TRANSACTION_getMyMemoryState:I = 0x8c

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x7e

.field static final TRANSACTION_getPackageForIntentSender:I = 0x3d

.field static final TRANSACTION_getPackageForToken:I = 0x2e

.field static final TRANSACTION_getPackageProcessState:I = 0xe7

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x7c

.field static final TRANSACTION_getPersistedUriPermissions:I = 0xb7

.field static final TRANSACTION_getProcessLimit:I = 0x30

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x60

.field static final TRANSACTION_getProcessPss:I = 0x87

.field static final TRANSACTION_getProcessesInErrorState:I = 0x4b

.field static final TRANSACTION_getProviderMimeType:I = 0x71

.field static final TRANSACTION_getQuickReplyList:I = 0x135

.field static final TRANSACTION_getRecentTasks:I = 0x38

.field static final TRANSACTION_getRequestedOrientation:I = 0x45

.field static final TRANSACTION_getRunningAppProcesses:I = 0x51

.field static final TRANSACTION_getRunningExternalApplications:I = 0x6a

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x1d

.field static final TRANSACTION_getRunningUserIds:I = 0x9b

.field static final TRANSACTION_getServices:I = 0x4f

.field static final TRANSACTION_getStackInfo:I = 0xae

.field static final TRANSACTION_getTagForIntentSender:I = 0xbc

.field static final TRANSACTION_getTaskBounds:I = 0xb9

.field static final TRANSACTION_getTaskDescription:I = 0x50

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0xd5

.field static final TRANSACTION_getTaskForActivity:I = 0x18

.field static final TRANSACTION_getTaskSnapshot:I = 0x124

.field static final TRANSACTION_getTasks:I = 0x14

.field static final TRANSACTION_getUidForIntentSender:I = 0x5b

.field static final TRANSACTION_getUidProcessState:I = 0xeb

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0x103

.field static final TRANSACTION_grantUriPermission:I = 0x33

.field static final TRANSACTION_grantUriPermissionFromOwner:I = 0x73

.field static final TRANSACTION_handleApplicationCrash:I = 0x5

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x6c

.field static final TRANSACTION_handleApplicationWtf:I = 0x64

.field static final TRANSACTION_handleIncomingUser:I = 0x5c

.field static final TRANSACTION_hang:I = 0xa7

.field static final TRANSACTION_initialAllPackages:I = 0x136

.field static final TRANSACTION_inputDispatchingTimedOut:I = 0x9f

.field static final TRANSACTION_isAppForeground:I = 0x109

.field static final TRANSACTION_isAppLocked:I = 0x133

.field static final TRANSACTION_isAppStartModeDisabled:I = 0xfa

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0xec

.field static final TRANSACTION_isBackgroundRestricted:I = 0x11a

.field static final TRANSACTION_isImmersive:I = 0x6d

.field static final TRANSACTION_isInLockTaskMode:I = 0xc0

.field static final TRANSACTION_isInMultiWindowMode:I = 0xfc

.field static final TRANSACTION_isInPictureInPictureMode:I = 0xfd

.field static final TRANSACTION_isIntentSenderAForegroundService:I = 0x96

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x95

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x85

.field static final TRANSACTION_isKeyguardDone:I = 0x134

.field static final TRANSACTION_isRootVoiceInteraction:I = 0xee

.field static final TRANSACTION_isTopActivityImmersive:I = 0x6f

.field static final TRANSACTION_isTopOfTask:I = 0xcc

.field static final TRANSACTION_isUidActive:I = 0x4

.field static final TRANSACTION_isUserAMonkey:I = 0x66

.field static final TRANSACTION_isUserRunning:I = 0x78

.field static final TRANSACTION_isVrModePackageEnabled:I = 0x115

.field static final TRANSACTION_keyguardGoingAway:I = 0xea

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x89

.field static final TRANSACTION_killApplication:I = 0x5e

.field static final TRANSACTION_killApplicationProcess:I = 0x61

.field static final TRANSACTION_killBackgroundProcesses:I = 0x65

.field static final TRANSACTION_killPackageDependents:I = 0xfe

.field static final TRANSACTION_killPids:I = 0x4e

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x8d

.field static final TRANSACTION_killUid:I = 0xa5

.field static final TRANSACTION_launchAssistIntent:I = 0xd6

.field static final TRANSACTION_makePackageIdle:I = 0x112

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x49

.field static final TRANSACTION_moveStackToDisplay:I = 0x11f

.field static final TRANSACTION_moveTaskBackwards:I = 0x17

.field static final TRANSACTION_moveTaskToFront:I = 0x16

.field static final TRANSACTION_moveTaskToStack:I = 0xa9

.field static final TRANSACTION_moveTasksToFullscreenStack:I = 0xf8

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0xf9

.field static final TRANSACTION_navigateUpTo:I = 0x90

.field static final TRANSACTION_needToAddNameForToast:I = 0x138

.field static final TRANSACTION_newUriPermissionOwner:I = 0x72

.field static final TRANSACTION_noteAlarmFinish:I = 0xe6

.field static final TRANSACTION_noteAlarmStart:I = 0xe5

.field static final TRANSACTION_noteWakeupAlarm:I = 0x42

.field static final TRANSACTION_notifyActivityDrawn:I = 0xb1

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xdb

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0xce

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0xcd

.field static final TRANSACTION_notifyLockedProfile:I = 0x116

.field static final TRANSACTION_notifyPinnedStackAnimationEnded:I = 0x10e

.field static final TRANSACTION_notifyPinnedStackAnimationStarted:I = 0x10d

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_overridePendingTransition:I = 0x63

.field static final TRANSACTION_peekService:I = 0x53

.field static final TRANSACTION_performIdleMaintenance:I = 0xb4

.field static final TRANSACTION_positionTaskInStack:I = 0xf1

.field static final TRANSACTION_profileControl:I = 0x54

.field static final TRANSACTION_publishContentProviders:I = 0x1a

.field static final TRANSACTION_publishService:I = 0x22

.field static final TRANSACTION_refContentProvider:I = 0x1b

.field static final TRANSACTION_registerIntentSenderCancelListener:I = 0x3e

.field static final TRANSACTION_registerProcessObserver:I = 0x83

.field static final TRANSACTION_registerReceiver:I = 0x9

.field static final TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x130

.field static final TRANSACTION_registerRemoteAnimations:I = 0x12f

.field static final TRANSACTION_registerTaskStackListener:I = 0xd9

.field static final TRANSACTION_registerUidObserver:I = 0x2

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x99

.field static final TRANSACTION_releaseActivityInstance:I = 0xd2

.field static final TRANSACTION_releasePersistableUriPermission:I = 0xb6

.field static final TRANSACTION_releaseSomeActivities:I = 0xd3

.field static final TRANSACTION_removeContentProvider:I = 0x43

.field static final TRANSACTION_removeContentProviderExternal:I = 0x8b

.field static final TRANSACTION_removeStack:I = 0x10f

.field static final TRANSACTION_removeStacksInWindowingModes:I = 0x110

.field static final TRANSACTION_removeStacksWithActivityTypes:I = 0x111

.field static final TRANSACTION_removeTask:I = 0x82

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0xb2

.field static final TRANSACTION_reportAssistContextExtras:I = 0xa3

.field static final TRANSACTION_reportSizeConfigurations:I = 0xf3

.field static final TRANSACTION_requestAssistContextExtras:I = 0xde

.field static final TRANSACTION_requestAutofillData:I = 0x120

.field static final TRANSACTION_requestBugReport:I = 0x9c

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x9d

.field static final TRANSACTION_requestWifiBugReport:I = 0x9e

.field static final TRANSACTION_resizeDockedStack:I = 0x104

.field static final TRANSACTION_resizePinnedStack:I = 0x114

.field static final TRANSACTION_resizeStack:I = 0xaa

.field static final TRANSACTION_resizeTask:I = 0xdf

.field static final TRANSACTION_restart:I = 0xb3

.field static final TRANSACTION_restartUserInBackground:I = 0x122

.field static final TRANSACTION_resumeAppSwitches:I = 0x57

.field static final TRANSACTION_revokeUriPermission:I = 0x34

.field static final TRANSACTION_revokeUriPermissionFromOwner:I = 0x74

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x125

.field static final TRANSACTION_sendIdleJobTrigger:I = 0x118

.field static final TRANSACTION_sendIntentSender:I = 0x119

.field static final TRANSACTION_serviceDoneExecuting:I = 0x39

.field static final TRANSACTION_setActivityController:I = 0x35

.field static final TRANSACTION_setAgentApp:I = 0x25

.field static final TRANSACTION_setAlwaysFinish:I = 0x26

.field static final TRANSACTION_setDebugApp:I = 0x24

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x128

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xe1

.field static final TRANSACTION_setFocusedStack:I = 0xac

.field static final TRANSACTION_setFocusedTask:I = 0x81

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x7b

.field static final TRANSACTION_setHasTopUi:I = 0x11d

.field static final TRANSACTION_setImmersive:I = 0x6e

.field static final TRANSACTION_setKeyguardDone:I = 0x132

.field static final TRANSACTION_setLockScreenShown:I = 0x91

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x7f

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x7d

.field static final TRANSACTION_setPersistentVrThread:I = 0x126

.field static final TRANSACTION_setPictureInPictureParams:I = 0x100

.field static final TRANSACTION_setProcessImportant:I = 0x47

.field static final TRANSACTION_setProcessLimit:I = 0x2f

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xbb

.field static final TRANSACTION_setRenderThread:I = 0x11c

.field static final TRANSACTION_setRequestedOrientation:I = 0x44

.field static final TRANSACTION_setServiceForeground:I = 0x48

.field static final TRANSACTION_setShowWhenLocked:I = 0x12c

.field static final TRANSACTION_setSplitScreenResizing:I = 0x105

.field static final TRANSACTION_setTaskDescription:I = 0xc1

.field static final TRANSACTION_setTaskResizeable:I = 0xdd

.field static final TRANSACTION_setTaskWindowingMode:I = 0xa8

.field static final TRANSACTION_setTaskWindowingModeSplitScreenPrimary:I = 0xf4

.field static final TRANSACTION_setTurnScreenOn:I = 0x12d

.field static final TRANSACTION_setUserIsMonkey:I = 0xa6

.field static final TRANSACTION_setVoiceKeepAwake:I = 0xe3

.field static final TRANSACTION_setVrMode:I = 0x106

.field static final TRANSACTION_setVrThread:I = 0x11b

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x8f

.field static final TRANSACTION_showAssistFromActivity:I = 0xed

.field static final TRANSACTION_showBootMessage:I = 0x88

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0xe8

.field static final TRANSACTION_showWaitingForDebugger:I = 0x36

.field static final TRANSACTION_shutdown:I = 0x55

.field static final TRANSACTION_signalPersistentProcesses:I = 0x37

.field static final TRANSACTION_startActivities:I = 0x77

.field static final TRANSACTION_startActivity:I = 0x6

.field static final TRANSACTION_startActivityAndWait:I = 0x67

.field static final TRANSACTION_startActivityAsCaller:I = 0xcf

.field static final TRANSACTION_startActivityAsUser:I = 0x97

.field static final TRANSACTION_startActivityFromRecents:I = 0xc6

.field static final TRANSACTION_startActivityIntentSender:I = 0x62

.field static final TRANSACTION_startActivityWithConfig:I = 0x69

.field static final TRANSACTION_startAssistantActivity:I = 0xc3

.field static final TRANSACTION_startBinderTracking:I = 0xef

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0x117

.field static final TRANSACTION_startInPlaceAnimationOnFrontMostApplication:I = 0xd7

.field static final TRANSACTION_startInstrumentation:I = 0x27

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x10a

.field static final TRANSACTION_startLockTaskModeByToken:I = 0xbe

.field static final TRANSACTION_startNextMatchingActivity:I = 0x41

.field static final TRANSACTION_startRecentsActivity:I = 0xc4

.field static final TRANSACTION_startService:I = 0x1e

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xc9

.field static final TRANSACTION_startUserInBackground:I = 0xbd

.field static final TRANSACTION_startUserInBackgroundWithListener:I = 0x12e

.field static final TRANSACTION_startVoiceActivity:I = 0xc2

.field static final TRANSACTION_stopAppSwitches:I = 0x56

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xf0

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x10b

.field static final TRANSACTION_stopLockTaskModeByToken:I = 0xbf

.field static final TRANSACTION_stopService:I = 0x1f

.field static final TRANSACTION_stopServiceToken:I = 0x2c

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0xca

.field static final TRANSACTION_stopUser:I = 0x98

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x10c

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xf7

.field static final TRANSACTION_switchUser:I = 0x80

.field static final TRANSACTION_takePersistableUriPermission:I = 0xb5

.field static final TRANSACTION_unbindBackupAgent:I = 0x5a

.field static final TRANSACTION_unbindFinished:I = 0x46

.field static final TRANSACTION_unbindService:I = 0x21

.field static final TRANSACTION_unbroadcastIntent:I = 0xc

.field static final TRANSACTION_unhandledBack:I = 0x7

.field static final TRANSACTION_unlockUser:I = 0xfb

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3f

.field static final TRANSACTION_unregisterProcessObserver:I = 0x84

.field static final TRANSACTION_unregisterReceiver:I = 0xa

.field static final TRANSACTION_unregisterTaskStackListener:I = 0xda

.field static final TRANSACTION_unregisterUidObserver:I = 0x3

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x9a

.field static final TRANSACTION_unstableProviderDied:I = 0x94

.field static final TRANSACTION_updateConfiguration:I = 0x2b

.field static final TRANSACTION_updateDeviceOwner:I = 0xe9

.field static final TRANSACTION_updateDisplayOverrideConfiguration:I = 0x11e

.field static final TRANSACTION_updateLockTaskFeatures:I = 0x12b

.field static final TRANSACTION_updateLockTaskPackages:I = 0xe4

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x86

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0x127

.field static final TRANSACTION_willActivityBeVisible:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 34
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    .line 36
    :cond_1
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method private onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10348
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10350
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10352
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 10354
    .local v11, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 10355
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10358
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    move-object v5, v2

    goto :goto_1

    .end local v5    # "_arg2":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10361
    .restart local v5    # "_arg2":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10363
    .local v12, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v13

    .line 10365
    .local v13, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10367
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10369
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 10370
    .local v16, "_arg7":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move-object v6, v12

    move-object v7, v13

    move v8, v14

    move-object v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v2

    .line 10371
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10372
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10373
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 24
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10224
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10226
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10228
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10229
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10232
    .local v2, "_arg1":Landroid/content/Intent;
    move-object v4, v2

    goto :goto_0

    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_0
    move-object v4, v3

    .line 10235
    .local v4, "_arg1":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10237
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v17

    .line 10239
    .local v17, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 10241
    .local v18, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10243
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10244
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10247
    .local v2, "_arg6":Landroid/os/Bundle;
    move-object v9, v2

    goto :goto_1

    .end local v2    # "_arg6":Landroid/os/Bundle;
    :cond_1
    move-object v9, v3

    .line 10250
    .local v9, "_arg6":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 10252
    .local v20, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10254
    .local v21, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 10255
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10258
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 10261
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/16 v22, 0x1

    if-eqz v2, :cond_3

    move/from16 v13, v22

    goto :goto_3

    :cond_3
    move v13, v3

    .line 10263
    .local v13, "_arg10":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v14, v22

    goto :goto_4

    :cond_4
    move v14, v3

    .line 10265
    .local v14, "_arg11":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 10266
    .local v23, "_arg12":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    move/from16 v15, v23

    invoke-virtual/range {v2 .. v15}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v2

    .line 10267
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10268
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10269
    return v22
.end method

.method private onTransact$checkGrantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10871
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10875
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 10877
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10878
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 10881
    .local v4, "_arg2":Landroid/net/Uri;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10884
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10886
    .local v8, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10887
    .local v9, "_arg4":I
    move-object v1, p0

    move v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v1

    .line 10888
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10889
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10890
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10429
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10432
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 10435
    .local v2, "_arg0":Landroid/net/Uri;
    :goto_0
    move-object v2, v0

    goto :goto_1

    .end local v2    # "_arg0":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10438
    .restart local v2    # "_arg0":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10440
    .local v0, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10442
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10444
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10446
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 10447
    .local v11, "_arg5":Landroid/os/IBinder;
    move-object v1, p0

    move v3, v0

    move v4, v8

    move v5, v9

    move v6, v10

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v1

    .line 10448
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10449
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10450
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$crashApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10823
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10825
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10827
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10829
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10831
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10833
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10834
    .local v10, "_arg4":Ljava/lang/String;
    move-object v1, p0

    move v2, v0

    move v3, v7

    move-object v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 10835
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10836
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10895
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10897
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10899
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10901
    .local v9, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    move v4, v2

    .line 10903
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    move v5, v2

    .line 10905
    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v6, v10

    goto :goto_2

    :cond_2
    move v6, v2

    .line 10907
    .local v6, "_arg4":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10909
    .local v11, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 10910
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 10913
    .local v8, "_arg6":Landroid/os/ParcelFileDescriptor;
    :goto_3
    move-object v8, v1

    goto :goto_4

    .end local v8    # "_arg6":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 10915
    .restart local v8    # "_arg6":Landroid/os/ParcelFileDescriptor;
    :goto_4
    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move-object v7, v11

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    .line 10916
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10917
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10918
    return v10
.end method

.method private onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10275
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10277
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10279
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10281
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10283
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10284
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 10287
    .local v5, "_arg3":Landroid/os/Bundle;
    :goto_0
    move-object v5, v1

    goto :goto_1

    .end local v5    # "_arg3":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10290
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    .line 10292
    .local v6, "_arg4":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10293
    .local v11, "_arg5":I
    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move-object v4, v9

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 10294
    return v10
.end method

.method private onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10507
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10509
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10511
    .local v1, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10513
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 10515
    .local v14, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10517
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 10519
    .local v16, "_arg4":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Landroid/content/Intent;

    .line 10521
    .local v17, "_arg5":[Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 10523
    .local v18, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10525
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v20, 0x0

    if-eqz v2, :cond_0

    .line 10526
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10529
    .local v2, "_arg8":Landroid/os/Bundle;
    move-object v11, v2

    goto :goto_0

    .end local v2    # "_arg8":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v11, v20

    .line 10532
    .local v11, "_arg8":Landroid/os/Bundle;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10533
    .local v21, "_arg9":I
    move-object/from16 v2, p0

    move v3, v1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    .line 10534
    .local v2, "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10535
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    :goto_1
    move-object/from16 v3, v20

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10536
    const/4 v3, 0x1

    return v3
.end method

.method private onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10455
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10457
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10459
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 10461
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10462
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 10465
    .local v4, "_arg2":Landroid/net/Uri;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10468
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10470
    .local v8, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10471
    .local v9, "_arg4":I
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 10472
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10473
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$grantUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10843
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10845
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 10847
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10849
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10851
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 10852
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 10855
    .local v6, "_arg3":Landroid/net/Uri;
    :goto_0
    move-object v6, v2

    goto :goto_1

    .end local v6    # "_arg3":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10858
    .restart local v6    # "_arg3":Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10860
    .local v12, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 10862
    .local v13, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10863
    .local v14, "_arg6":I
    move-object v2, p0

    move-object v3, v1

    move v4, v10

    move-object v5, v11

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 10864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10865
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10645
    const-string v0, "android.app.IActivityManager"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10647
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 10649
    .local v0, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 10651
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 10653
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    move v6, v12

    goto :goto_0

    :cond_0
    move v6, v3

    .line 10655
    .local v6, "_arg3":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v7, v12

    goto :goto_1

    :cond_1
    move v7, v3

    .line 10657
    .local v7, "_arg4":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10659
    .local v13, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 10660
    .local v14, "_arg6":Ljava/lang/String;
    move-object v2, p0

    move v3, v0

    move v4, v10

    move v5, v11

    move-object v8, v13

    move-object v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 10661
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10662
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10663
    return v12
.end method

.method private onTransact$launchAssistIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11275
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11278
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 11281
    .local v0, "_arg0":Landroid/content/Intent;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_0
    move-object v3, v1

    .line 11284
    .local v3, "_arg0":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11286
    .local v0, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11288
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11290
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11291
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11294
    .local v7, "_arg4":Landroid/os/Bundle;
    :goto_1
    move-object v7, v1

    goto :goto_2

    .end local v7    # "_arg4":Landroid/os/Bundle;
    :cond_1
    goto :goto_1

    .line 11296
    .restart local v7    # "_arg4":Landroid/os/Bundle;
    :goto_2
    move-object v2, p0

    move v4, v0

    move-object v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v1

    .line 11297
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11298
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11299
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$noteAlarmFinish$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11344
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11346
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 11348
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11349
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .local v1, "_arg1":Landroid/os/WorkSource;
    goto :goto_0

    .line 11352
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_0
    const/4 v1, 0x0

    .line 11355
    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11357
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11358
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 11359
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11360
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10547
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10549
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 10551
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10552
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 10555
    .local v3, "_arg1":Landroid/os/WorkSource;
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "_arg1":Landroid/os/WorkSource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10558
    .restart local v3    # "_arg1":Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10560
    .local v7, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10562
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10563
    .local v9, "_arg4":Ljava/lang/String;
    move-object v1, p0

    move-object v2, v0

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 10564
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10565
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10614
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10618
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 10620
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    .line 10622
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 10623
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    .line 10626
    .local v5, "_arg3":Landroid/app/ProfilerInfo;
    :goto_1
    move-object v5, v1

    goto :goto_2

    .end local v5    # "_arg3":Landroid/app/ProfilerInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 10629
    .restart local v5    # "_arg3":Landroid/app/ProfilerInfo;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10630
    .local v9, "_arg4":I
    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v1

    .line 10631
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10632
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10633
    return v8
.end method

.method private onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10189
    move-object/from16 v1, p2

    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 10193
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10195
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v12

    .line 10197
    .local v12, "_arg2":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 10198
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 10201
    .local v7, "_arg3":Landroid/content/IntentFilter;
    :goto_0
    move-object v7, v3

    goto :goto_1

    .end local v7    # "_arg3":Landroid/content/IntentFilter;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 10204
    .restart local v7    # "_arg3":Landroid/content/IntentFilter;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10206
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10208
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 10209
    .local v15, "_arg6":I
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v11

    move-object v6, v12

    move-object v8, v13

    move v9, v14

    move v10, v15

    invoke-virtual/range {v3 .. v10}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v3

    .line 10210
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10211
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 10212
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10213
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 10216
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10218
    :goto_2
    return v4
.end method

.method private onTransact$reportAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11039
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11041
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11043
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11044
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11047
    .local v1, "_arg1":Landroid/os/Bundle;
    move-object v3, v1

    goto :goto_0

    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    move-object v3, v2

    .line 11050
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 11051
    sget-object v1, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure;

    .line 11054
    .local v1, "_arg2":Landroid/app/assist/AssistStructure;
    move-object v4, v1

    goto :goto_1

    .end local v1    # "_arg2":Landroid/app/assist/AssistStructure;
    :cond_1
    move-object v4, v2

    .line 11057
    .local v4, "_arg2":Landroid/app/assist/AssistStructure;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11058
    sget-object v1, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistContent;

    .line 11061
    .local v1, "_arg3":Landroid/app/assist/AssistContent;
    move-object v5, v1

    goto :goto_2

    .end local v1    # "_arg3":Landroid/app/assist/AssistContent;
    :cond_2
    move-object v5, v2

    .line 11064
    .local v5, "_arg3":Landroid/app/assist/AssistContent;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 11065
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 11068
    .local v1, "_arg4":Landroid/net/Uri;
    move-object v6, v1

    goto :goto_3

    .end local v1    # "_arg4":Landroid/net/Uri;
    :cond_3
    move-object v6, v2

    .line 11070
    .local v6, "_arg4":Landroid/net/Uri;
    :goto_3
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 11071
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11072
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$reportSizeConfigurations$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11377
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11379
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 11381
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 11383
    .local v1, "_arg1":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 11385
    .local v2, "_arg2":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 11386
    .local v3, "_arg3":[I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 11387
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11388
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$requestAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11311
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11315
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    .line 11317
    .local v8, "_arg1":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11318
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11321
    .local v4, "_arg2":Landroid/os/Bundle;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11324
    .restart local v4    # "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 11326
    .local v9, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v6, v10

    goto :goto_2

    :cond_1
    move v6, v2

    .line 11328
    .local v6, "_arg4":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v7, v10

    goto :goto_3

    :cond_2
    move v7, v2

    .line 11329
    .local v7, "_arg5":Z
    :goto_3
    move-object v1, p0

    move v2, v0

    move-object v3, v8

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    .line 11330
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11331
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11332
    return v10
.end method

.method private onTransact$requestAutofillData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11554
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11556
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 11558
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11559
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 11562
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .line 11565
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 11567
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11568
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    .line 11569
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11570
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11571
    const/4 v5, 0x1

    return v5
.end method

.method private onTransact$resizeDockedStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11450
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11453
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11456
    .local v0, "_arg0":Landroid/graphics/Rect;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :cond_0
    move-object v3, v1

    .line 11459
    .local v3, "_arg0":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 11460
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11463
    .local v0, "_arg1":Landroid/graphics/Rect;
    move-object v4, v0

    goto :goto_1

    .end local v0    # "_arg1":Landroid/graphics/Rect;
    :cond_1
    move-object v4, v1

    .line 11466
    .local v4, "_arg1":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 11467
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11470
    .local v0, "_arg2":Landroid/graphics/Rect;
    move-object v5, v0

    goto :goto_2

    .end local v0    # "_arg2":Landroid/graphics/Rect;
    :cond_2
    move-object v5, v1

    .line 11473
    .local v5, "_arg2":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11474
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 11477
    .local v0, "_arg3":Landroid/graphics/Rect;
    move-object v6, v0

    goto :goto_3

    .end local v0    # "_arg3":Landroid/graphics/Rect;
    :cond_3
    move-object v6, v1

    .line 11480
    .local v6, "_arg3":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 11481
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    .line 11484
    .local v7, "_arg4":Landroid/graphics/Rect;
    :goto_4
    move-object v7, v1

    goto :goto_5

    .end local v7    # "_arg4":Landroid/graphics/Rect;
    :cond_4
    goto :goto_4

    .line 11486
    .restart local v7    # "_arg4":Landroid/graphics/Rect;
    :goto_5
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 11487
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11488
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact$resizeStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11083
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11087
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 11088
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 11091
    .local v3, "_arg1":Landroid/graphics/Rect;
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 11094
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    move v4, v8

    goto :goto_2

    :cond_1
    move v4, v2

    .line 11096
    .local v4, "_arg2":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    move v5, v2

    .line 11098
    .local v5, "_arg3":Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v6, v8

    goto :goto_4

    :cond_3
    move v6, v2

    .line 11100
    .local v6, "_arg4":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11101
    .local v9, "_arg5":I
    move-object v1, p0

    move v2, v0

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 11102
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11103
    return v8
.end method

.method private onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10478
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10480
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10482
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 10484
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10485
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 10488
    .local v4, "_arg2":Landroid/net/Uri;
    :goto_0
    move-object v4, v1

    goto :goto_1

    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10491
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10493
    .local v8, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 10494
    .local v9, "_arg4":I
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v5, v8

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 10495
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10496
    const/4 v1, 0x1

    return v1
.end method

.method private onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11513
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11515
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 11517
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 11519
    .local v11, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11521
    .local v12, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11522
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11525
    .local v2, "_arg3":Landroid/content/Intent;
    move-object v6, v2

    goto :goto_0

    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v6, v3

    .line 11528
    .local v6, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11530
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v14

    .line 11532
    .local v14, "_arg5":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11534
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11535
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11538
    .local v2, "_arg7":Landroid/os/Bundle;
    move-object v10, v2

    goto :goto_1

    .end local v2    # "_arg7":Landroid/os/Bundle;
    :cond_1
    move-object v10, v3

    .line 11540
    .local v10, "_arg7":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move v5, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 11541
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11542
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11543
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10575
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10578
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 10581
    .local v0, "_arg0":Landroid/content/ComponentName;
    move-object v3, v0

    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_0
    move-object v3, v1

    .line 10584
    .local v3, "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 10586
    .local v0, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 10588
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10589
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 10592
    .local v6, "_arg3":Landroid/app/Notification;
    :goto_1
    move-object v6, v1

    goto :goto_2

    .end local v6    # "_arg3":Landroid/app/Notification;
    :cond_1
    goto :goto_1

    .line 10595
    .restart local v6    # "_arg3":Landroid/app/Notification;
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10596
    .local v1, "_arg4":I
    move-object v2, p0

    move-object v4, v0

    move v5, v8

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 10597
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10598
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$setTaskWindowingModeSplitScreenPrimary$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11393
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11397
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11399
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v2

    .line 11401
    .local v4, "_arg2":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v2

    .line 11403
    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11404
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 11407
    .local v6, "_arg4":Landroid/graphics/Rect;
    :goto_2
    move-object v6, v1

    goto :goto_3

    .end local v6    # "_arg4":Landroid/graphics/Rect;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 11410
    .restart local v6    # "_arg4":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v7, v9

    goto :goto_4

    :cond_3
    move v7, v2

    .line 11411
    .local v7, "_arg5":Z
    :goto_4
    move-object v1, p0

    move v2, v0

    move v3, v8

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    move-result v1

    .line 11412
    .local v1, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11413
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11414
    return v9
.end method

.method private onTransact$startActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10923
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10927
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10929
    .local v10, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [Landroid/content/Intent;

    .line 10931
    .local v11, "_arg2":[Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 10933
    .local v12, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 10935
    .local v13, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 10936
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10939
    .local v8, "_arg5":Landroid/os/Bundle;
    :goto_0
    move-object v8, v2

    goto :goto_1

    .end local v8    # "_arg5":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10942
    .restart local v8    # "_arg5":Landroid/os/Bundle;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10943
    .local v14, "_arg6":I
    move-object v2, p0

    move-object v3, v1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Landroid/app/IActivityManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v2

    .line 10944
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10945
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10946
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10143
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10147
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 10149
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10150
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10153
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 10156
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 10158
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 10160
    .local v15, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10162
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 10164
    .local v17, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 10166
    .local v18, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10167
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 10170
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 10173
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 10174
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10177
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 10179
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2

    .line 10180
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10181
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10182
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityAndWait$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10718
    move-object/from16 v1, p2

    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10720
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 10722
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10724
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 10725
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 10728
    .local v3, "_arg2":Landroid/content/Intent;
    move-object v6, v3

    goto :goto_0

    .end local v3    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v6, v4

    .line 10731
    .local v6, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10733
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 10735
    .local v17, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10737
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10739
    .local v19, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 10741
    .local v20, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 10742
    sget-object v3, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProfilerInfo;

    .line 10745
    .local v3, "_arg8":Landroid/app/ProfilerInfo;
    move-object v12, v3

    goto :goto_1

    .end local v3    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v12, v4

    .line 10748
    .local v12, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 10749
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 10752
    .local v3, "_arg9":Landroid/os/Bundle;
    move-object v13, v3

    goto :goto_2

    .end local v3    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v13, v4

    .line 10755
    .local v13, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10756
    .local v21, "_arg10":I
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v14, v21

    invoke-virtual/range {v3 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v3

    .line 10757
    .local v3, "_result":Landroid/app/WaitResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10758
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 10759
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10760
    invoke-virtual {v3, v1, v4}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 10763
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10765
    :goto_3
    return v4
.end method

.method private onTransact$startActivityAsCaller$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 23
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11221
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11223
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11225
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11227
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11228
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11231
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 11234
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11236
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 11238
    .local v17, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11240
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11242
    .local v19, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11244
    .local v20, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11245
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 11248
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 11251
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11252
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11255
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11258
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v21, 0x1

    if-eqz v2, :cond_3

    move/from16 v13, v21

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    move v13, v2

    .line 11260
    .local v13, "_arg10":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 11261
    .local v22, "_arg11":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v14, v22

    invoke-virtual/range {v2 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v2

    .line 11262
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11263
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11264
    return v21
.end method

.method private onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10982
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10984
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10986
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 10988
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10989
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10992
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 10995
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10997
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 10999
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11001
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11003
    .local v18, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11005
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11006
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 11009
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 11012
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11013
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11016
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11019
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11020
    .local v20, "_arg10":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 11021
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11022
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11023
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10673
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10675
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10677
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v14

    .line 10679
    .local v14, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 10681
    .local v15, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10682
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10685
    .local v2, "_arg3":Landroid/content/Intent;
    move-object v6, v2

    goto :goto_0

    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v6, v3

    .line 10688
    .local v6, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10690
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 10692
    .local v17, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10694
    .local v18, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10696
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 10698
    .local v20, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 10700
    .local v21, "_arg9":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10701
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10704
    .local v2, "_arg10":Landroid/os/Bundle;
    move-object v13, v2

    goto :goto_1

    .end local v2    # "_arg10":Landroid/os/Bundle;
    :cond_1
    move-object v13, v3

    .line 10706
    .local v13, "_arg10":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    .line 10707
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10708
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10709
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startActivityWithConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10771
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10773
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 10775
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 10777
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 10778
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 10781
    .local v2, "_arg2":Landroid/content/Intent;
    move-object v5, v2

    goto :goto_0

    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_0
    move-object v5, v3

    .line 10784
    .local v5, "_arg2":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10786
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 10788
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10790
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 10792
    .local v18, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 10794
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 10795
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 10798
    .local v2, "_arg8":Landroid/content/res/Configuration;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/content/res/Configuration;
    :cond_1
    move-object v11, v3

    .line 10801
    .local v11, "_arg8":Landroid/content/res/Configuration;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 10802
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10805
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 10808
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 10809
    .local v20, "_arg10":I
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v2

    .line 10810
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10811
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10812
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$startAssistantActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11177
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11181
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11183
    .local v9, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11185
    .local v10, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11186
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 11189
    .local v1, "_arg3":Landroid/content/Intent;
    move-object v5, v1

    goto :goto_0

    .end local v1    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v5, v2

    .line 11192
    .local v5, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11194
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 11195
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11198
    .local v1, "_arg5":Landroid/os/Bundle;
    move-object v7, v1

    goto :goto_1

    .end local v1    # "_arg5":Landroid/os/Bundle;
    :cond_1
    move-object v7, v2

    .line 11201
    .local v7, "_arg5":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11202
    .local v12, "_arg6":I
    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move v4, v10

    move-object v6, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v1

    .line 11203
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11204
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11205
    const/4 v2, 0x1

    return v2
.end method

.method private onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 10384
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10386
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10387
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 10390
    .local v1, "_arg0":Landroid/content/ComponentName;
    move-object v4, v1

    goto :goto_0

    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :cond_0
    move-object v4, v2

    .line 10393
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 10395
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10397
    .local v12, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 10398
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 10401
    .local v7, "_arg3":Landroid/os/Bundle;
    :goto_1
    move-object v7, v2

    goto :goto_2

    .end local v7    # "_arg3":Landroid/os/Bundle;
    :cond_1
    goto :goto_1

    .line 10404
    .restart local v7    # "_arg3":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v2

    .line 10406
    .local v2, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v13

    .line 10408
    .local v13, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 10410
    .local v14, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 10411
    .local v15, "_arg7":Ljava/lang/String;
    move-object/from16 v3, p0

    move-object v5, v1

    move v6, v12

    move-object v8, v2

    move-object v9, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v3 .. v11}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v3

    .line 10412
    .local v3, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10413
    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10414
    const/4 v6, 0x1

    return v6
.end method

.method private onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10315
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10317
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 10319
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10320
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 10323
    .local v3, "_arg1":Landroid/content/Intent;
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "_arg1":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10326
    .restart local v3    # "_arg1":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10328
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    move v5, v10

    goto :goto_2

    :cond_1
    move v5, v9

    .line 10330
    .local v5, "_arg3":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10332
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 10333
    .local v12, "_arg5":I
    move-object v1, p0

    move-object v2, v0

    move-object v4, v8

    move-object v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 10334
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 10335
    if-eqz v1, :cond_2

    .line 10336
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 10337
    invoke-virtual {v1, p2, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 10340
    :cond_2
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 10342
    :goto_3
    return v10
.end method

.method private onTransact$startVoiceActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 11131
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11135
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11137
    .local v14, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11139
    .local v15, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11140
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 11143
    .local v2, "_arg3":Landroid/content/Intent;
    move-object v6, v2

    goto :goto_0

    .end local v2    # "_arg3":Landroid/content/Intent;
    :cond_0
    move-object v6, v3

    .line 11146
    .local v6, "_arg3":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11148
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v17

    .line 11150
    .local v17, "_arg5":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v18

    .line 11152
    .local v18, "_arg6":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11154
    .local v19, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 11155
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfilerInfo;

    .line 11158
    .local v2, "_arg8":Landroid/app/ProfilerInfo;
    move-object v11, v2

    goto :goto_1

    .end local v2    # "_arg8":Landroid/app/ProfilerInfo;
    :cond_1
    move-object v11, v3

    .line 11161
    .local v11, "_arg8":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 11162
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 11165
    .local v2, "_arg9":Landroid/os/Bundle;
    move-object v12, v2

    goto :goto_2

    .end local v2    # "_arg9":Landroid/os/Bundle;
    :cond_2
    move-object v12, v3

    .line 11168
    .local v12, "_arg9":Landroid/os/Bundle;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11169
    .local v20, "_arg10":I
    move-object/from16 v2, p0

    move-object v3, v1

    move v4, v14

    move v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 11170
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11171
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11172
    const/4 v4, 0x1

    return v4
.end method

.method private onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11425
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11429
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 11431
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 11433
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 11434
    .local v3, "_arg3":Landroid/os/IProgressListener;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    .line 11435
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11436
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 11437
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 44
    const-string v10, "android.app.IActivityManager"

    .line 45
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_79

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 3534
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 3525
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3528
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->addAppLockerPassedPackage(Ljava/lang/String;)V

    .line 3529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    return v11

    .line 3515
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3518
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->needToAddNameForToast(Ljava/lang/String;)Z

    move-result v1

    .line 3519
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3520
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    return v11

    .line 3507
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3508
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAggregateNext()[Ljava/lang/String;

    move-result-object v0

    .line 3509
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3510
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3511
    return v11

    .line 3498
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3501
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->initialAllPackages(I)V

    .line 3502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3503
    return v11

    .line 3488
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3491
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v1

    .line 3492
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3493
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3494
    return v11

    .line 3480
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3481
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isKeyguardDone()Z

    move-result v0

    .line 3482
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3483
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3484
    return v11

    .line 3468
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3472
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3473
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isAppLocked(Ljava/lang/String;I)Z

    move-result v2

    .line 3474
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3475
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3476
    return v11

    .line 3459
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v11

    nop

    :cond_0
    move v0, v1

    .line 3462
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setKeyguardDone(Z)V

    .line 3463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3464
    return v11

    .line 3445
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3448
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 3451
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_1
    nop

    .line 3453
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 3454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3455
    return v11

    .line 3429
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3433
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3434
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    .local v0, "_arg1":Landroid/view/RemoteAnimationAdapter;
    goto :goto_1

    .line 3437
    .end local v0    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    :cond_2
    nop

    .line 3439
    .restart local v0    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    :goto_1
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 3440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3441
    return v11

    .line 3413
    .end local v0    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3417
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 3418
    sget-object v0, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationDefinition;

    .local v0, "_arg1":Landroid/view/RemoteAnimationDefinition;
    goto :goto_2

    .line 3421
    .end local v0    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :cond_3
    nop

    .line 3423
    .restart local v0    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :goto_2
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 3424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3425
    return v11

    .line 3401
    .end local v0    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3405
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v1

    .line 3406
    .local v1, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    .line 3407
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3408
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    return v11

    .line 3390
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IProgressListener;
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3394
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v11

    nop

    .line 3395
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 3396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3397
    return v11

    .line 3379
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3383
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v1, v11

    nop

    .line 3384
    .restart local v1    # "_arg1":Z
    :cond_5
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 3385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3386
    return v11

    .line 3368
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3372
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3373
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->updateLockTaskFeatures(II)V

    .line 3374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    return v11

    .line 3359
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3362
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->backgroundWhitelistUid(I)V

    .line 3363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3364
    return v11

    .line 3351
    .end local v0    # "_arg0":I
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3352
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    .line 3353
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3354
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3355
    return v11

    .line 3340
    .end local v0    # "_result":I
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3344
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v1, v11

    nop

    .line 3345
    .local v1, "_arg1":Z
    :cond_6
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    .line 3346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3347
    return v11

    .line 3331
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3334
    .local v0, "_arg0":J
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 3335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3336
    return v11

    .line 3322
    .end local v0    # "_arg0":J
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3325
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 3326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    return v11

    .line 3311
    .end local v0    # "_arg0":I
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3315
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3316
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 3317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3318
    return v11

    .line 3293
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3297
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v11

    goto :goto_3

    :cond_7
    move v2, v1

    .line 3298
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 3299
    .local v3, "_result":Landroid/app/ActivityManager$TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3300
    if-eqz v3, :cond_8

    .line 3301
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3302
    invoke-virtual {v3, v9, v11}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 3305
    :cond_8
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3307
    :goto_4
    return v11

    .line 3284
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/app/ActivityManager$TaskSnapshot;
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3287
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 3288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3289
    return v11

    .line 3274
    .end local v0    # "_arg0":I
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3277
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v1

    .line 3278
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3279
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3280
    return v11

    .line 3256
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3260
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 3262
    .local v2, "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 3263
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg2":Ljava/lang/CharSequence;
    goto :goto_5

    .line 3266
    .end local v0    # "_arg2":Ljava/lang/CharSequence;
    :cond_9
    nop

    .line 3268
    .restart local v0    # "_arg2":Ljava/lang/CharSequence;
    :goto_5
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 3269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3270
    return v11

    .line 3252
    .end local v0    # "_arg2":Ljava/lang/CharSequence;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    :pswitch_19
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$requestAutofillData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3241
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3245
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3246
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->moveStackToDisplay(II)V

    .line 3247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3248
    return v11

    .line 3224
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 3227
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .local v0, "_arg0":Landroid/content/res/Configuration;
    goto :goto_6

    .line 3230
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    :cond_a
    nop

    .line 3233
    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3234
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v2

    .line 3235
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3236
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3237
    return v11

    .line 3215
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v11

    nop

    :cond_b
    move v0, v1

    .line 3218
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 3219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3220
    return v11

    .line 3206
    .end local v0    # "_arg0":Z
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3209
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 3210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3211
    return v11

    .line 3197
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3200
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setVrThread(I)V

    .line 3201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3202
    return v11

    .line 3187
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3190
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v1

    .line 3191
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3192
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    return v11

    .line 3183
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 3176
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3177
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 3178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3179
    return v11

    .line 3155
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 3158
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_7

    .line 3161
    .end local v1    # "_arg0":Landroid/content/Intent;
    :cond_c
    move-object v1, v0

    .line 3164
    .restart local v1    # "_arg0":Landroid/content/Intent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 3165
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 3168
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_d
    nop

    .line 3170
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 3171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3172
    return v11

    .line 3146
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/content/Intent;
    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3149
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 3150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3151
    return v11

    .line 3131
    .end local v0    # "_arg0":I
    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 3134
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 3137
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_e
    nop

    .line 3139
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 3140
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3142
    return v11

    .line 3110
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 3113
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, "_arg0":Landroid/graphics/Rect;
    goto :goto_a

    .line 3116
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_f
    move-object v1, v0

    .line 3119
    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 3120
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "_arg1":Landroid/graphics/Rect;
    goto :goto_b

    .line 3123
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    :cond_10
    nop

    .line 3125
    .restart local v0    # "_arg1":Landroid/graphics/Rect;
    :goto_b
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3127
    return v11

    .line 3102
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v0

    .line 3104
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3105
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3106
    return v11

    .line 3091
    .end local v0    # "_result":I
    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3095
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3096
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 3097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3098
    return v11

    .line 3082
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3085
    .local v0, "_arg0":[I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeStacksWithActivityTypes([I)V

    .line 3086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3087
    return v11

    .line 3073
    .end local v0    # "_arg0":[I
    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3076
    .restart local v0    # "_arg0":[I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeStacksInWindowingModes([I)V

    .line 3077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3078
    return v11

    .line 3064
    .end local v0    # "_arg0":[I
    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3067
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeStack(I)V

    .line 3068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3069
    return v11

    .line 3057
    .end local v0    # "_arg0":I
    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3058
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationEnded()V

    .line 3059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3060
    return v11

    .line 3050
    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3051
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->notifyPinnedStackAnimationStarted()V

    .line 3052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3053
    return v11

    .line 3042
    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3043
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 3044
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3045
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3046
    return v11

    .line 3033
    .end local v0    # "_result":Z
    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3036
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 3037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    return v11

    .line 3017
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3021
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 3022
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 3025
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_11
    nop

    .line 3027
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 3028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3029
    return v11

    .line 3007
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3010
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isAppForeground(I)Z

    move-result v1

    .line 3011
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3013
    return v11

    .line 2996
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3000
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3001
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 3002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3003
    return v11

    .line 2978
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2982
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2983
    .local v2, "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2984
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2985
    if-eqz v3, :cond_12

    .line 2986
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2987
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 2990
    :cond_12
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2992
    :goto_d
    return v11

    .line 2959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2963
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    move v1, v11

    nop

    .line 2965
    .local v1, "_arg1":Z
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 2966
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg2":Landroid/content/ComponentName;
    goto :goto_e

    .line 2969
    .end local v0    # "_arg2":Landroid/content/ComponentName;
    :cond_14
    nop

    .line 2971
    .restart local v0    # "_arg2":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {v6, v2, v1, v0}, Landroid/app/IActivityManager$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v3

    .line 2972
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2973
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2974
    return v11

    .line 2950
    .end local v0    # "_arg2":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v1, v11

    nop

    :cond_15
    move v0, v1

    .line 2953
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setSplitScreenResizing(Z)V

    .line 2954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    return v11

    .line 2946
    .end local v0    # "_arg0":Z
    :pswitch_35
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$resizeDockedStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2936
    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2939
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 2940
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2942
    return v11

    .line 2927
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2930
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 2931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2932
    return v11

    .line 2917
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2920
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v1

    .line 2921
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2922
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2923
    return v11

    .line 2901
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2905
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 2906
    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    .local v0, "_arg1":Landroid/app/PictureInPictureParams;
    goto :goto_f

    .line 2909
    .end local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    :cond_16
    nop

    .line 2911
    .restart local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    :goto_f
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 2912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2913
    return v11

    .line 2884
    .end local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2888
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 2889
    sget-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    .restart local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    goto :goto_10

    .line 2892
    .end local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    :cond_17
    nop

    .line 2894
    .restart local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    :goto_10
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v2

    .line 2895
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2897
    return v11

    .line 2873
    .end local v0    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2877
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2878
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 2879
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2880
    return v11

    .line 2863
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2866
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v1

    .line 2867
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2868
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2869
    return v11

    .line 2853
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2856
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v1

    .line 2857
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2858
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    return v11

    .line 2849
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_3e
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2837
    :pswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2841
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2842
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v2

    .line 2843
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2844
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2845
    return v11

    .line 2820
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2824
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 2825
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "_arg1":Landroid/graphics/Rect;
    goto :goto_11

    .line 2828
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    :cond_18
    nop

    .line 2830
    .restart local v0    # "_arg1":Landroid/graphics/Rect;
    :goto_11
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 2831
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2832
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    return v11

    .line 2809
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_41
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2813
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    move v1, v11

    nop

    .line 2814
    .local v1, "_arg1":Z
    :cond_19
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->moveTasksToFullscreenStack(IZ)V

    .line 2815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    return v11

    .line 2800
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_42
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v11

    nop

    :cond_1a
    move v0, v1

    .line 2803
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 2804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2805
    return v11

    .line 2789
    .end local v0    # "_arg0":Z
    :pswitch_43
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v1, v11

    nop

    :cond_1b
    move v0, v1

    .line 2793
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2794
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->dismissPip(ZI)V

    .line 2795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    return v11

    .line 2780
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_44
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v11

    nop

    :cond_1c
    move v0, v1

    .line 2783
    .restart local v0    # "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->dismissSplitScreenMode(Z)V

    .line 2784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2785
    return v11

    .line 2776
    .end local v0    # "_arg0":Z
    :pswitch_45
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$setTaskWindowingModeSplitScreenPrimary$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2772
    :pswitch_46
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$reportSizeConfigurations$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2763
    :pswitch_47
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2766
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 2767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2768
    return v11

    .line 2750
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_48
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2756
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2757
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->positionTaskInStack(III)V

    .line 2758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2759
    return v11

    .line 2735
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_49
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 2738
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_12

    .line 2741
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_1d
    nop

    .line 2743
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    .line 2744
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2745
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    return v11

    .line 2727
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2728
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v0

    .line 2729
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2730
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2731
    return v11

    .line 2717
    .end local v0    # "_result":Z
    :pswitch_4b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2720
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v1

    .line 2721
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2722
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    return v11

    .line 2700
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_4c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2704
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 2705
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_13

    .line 2708
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_1e
    nop

    .line 2710
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_13
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    .line 2711
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2712
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    return v11

    .line 2692
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_4d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    .line 2694
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2695
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2696
    return v11

    .line 2680
    .end local v0    # "_result":Z
    :pswitch_4e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2684
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2685
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v2

    .line 2686
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2688
    return v11

    .line 2671
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_4f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2674
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->keyguardGoingAway(I)V

    .line 2675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2676
    return v11

    .line 2662
    .end local v0    # "_arg0":I
    :pswitch_50
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2665
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2667
    return v11

    .line 2654
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2657
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2658
    return v11

    .line 2642
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_52
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2646
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2647
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2648
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    return v11

    .line 2638
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_53
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$noteAlarmFinish$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2618
    :pswitch_54
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 2622
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 2623
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .local v0, "_arg1":Landroid/os/WorkSource;
    goto :goto_14

    .line 2626
    .end local v0    # "_arg1":Landroid/os/WorkSource;
    :cond_1f
    nop

    .line 2629
    .restart local v0    # "_arg1":Landroid/os/WorkSource;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2631
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2632
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    return v11

    .line 2607
    .end local v0    # "_arg1":Landroid/os/WorkSource;
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_55
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2611
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2612
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2614
    return v11

    .line 2596
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_56
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 2600
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    move v1, v11

    nop

    .line 2601
    .local v1, "_arg1":Z
    :cond_20
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    return v11

    .line 2587
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v1    # "_arg1":Z
    :pswitch_57
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2590
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    return v11

    .line 2572
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_58
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 2576
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2578
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 2580
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2581
    .local v16, "_arg3":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    return v11

    .line 2564
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_59
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2565
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 2566
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2568
    return v11

    .line 2546
    .end local v0    # "_result":I
    :pswitch_5a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2550
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    .line 2551
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "_arg1":Landroid/graphics/Rect;
    goto :goto_15

    .line 2554
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    :cond_21
    nop

    .line 2557
    .restart local v0    # "_arg1":Landroid/graphics/Rect;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2558
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v1, v0, v2}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    return v11

    .line 2542
    .end local v0    # "_arg1":Landroid/graphics/Rect;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg2":I
    :pswitch_5b
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$requestAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2531
    :pswitch_5c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2535
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2536
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 2537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2538
    return v11

    .line 2521
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2524
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->createStackOnDisplay(I)I

    move-result v1

    .line 2525
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2527
    return v11

    .line 2510
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2514
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 2515
    .local v1, "_arg1":[B
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    return v11

    .line 2501
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_5f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 2504
    .local v0, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 2505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2506
    return v11

    .line 2492
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_60
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 2495
    .restart local v0    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 2496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    return v11

    .line 2476
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_61
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2480
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2482
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2484
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2485
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v4

    .line 2486
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    return v11

    .line 2462
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :pswitch_62
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 2465
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_16

    .line 2468
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_22
    nop

    .line 2470
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_16
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V

    .line 2471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2472
    return v11

    .line 2458
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_63
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$launchAssistIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2440
    :pswitch_64
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2445
    .local v2, "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2446
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2447
    if-eqz v3, :cond_23

    .line 2448
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    invoke-virtual {v3, v9, v11}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 2452
    :cond_23
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    :goto_17
    return v11

    .line 2433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_65
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2434
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 2435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    return v11

    .line 2424
    :pswitch_66
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2427
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 2428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2429
    return v11

    .line 2414
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_67
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2417
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v1

    .line 2418
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2419
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2420
    return v11

    .line 2400
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_68
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    .line 2402
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2403
    if-eqz v0, :cond_24

    .line 2404
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2405
    invoke-virtual {v0, v9, v11}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    .line 2408
    :cond_24
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    :goto_18
    return v11

    .line 2369
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_69
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2373
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 2374
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg1":Landroid/content/Intent;
    goto :goto_19

    .line 2377
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_25
    move-object v2, v0

    .line 2380
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 2381
    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    .local v3, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_1a

    .line 2384
    .end local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    :cond_26
    move-object v3, v0

    .line 2387
    .restart local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 2388
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "_arg3":Landroid/graphics/Bitmap;
    goto :goto_1b

    .line 2391
    .end local v0    # "_arg3":Landroid/graphics/Bitmap;
    :cond_27
    nop

    .line 2393
    .restart local v0    # "_arg3":Landroid/graphics/Bitmap;
    :goto_1b
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/IActivityManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 2394
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2395
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    return v11

    .line 2365
    .end local v0    # "_arg3":Landroid/graphics/Bitmap;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    .end local v4    # "_result":I
    :pswitch_6a
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsCaller$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2356
    :pswitch_6b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2359
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2361
    return v11

    .line 2347
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_6c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2350
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    return v11

    .line 2337
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_6d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2340
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    .line 2341
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    return v11

    .line 2328
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_6e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 2331
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2333
    return v11

    .line 2321
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_6f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopSystemLockTaskMode()V

    .line 2323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    return v11

    .line 2312
    :pswitch_70
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2315
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    return v11

    .line 2302
    .end local v0    # "_arg0":I
    :pswitch_71
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2305
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2306
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 2308
    return v11

    .line 2286
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_72
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2289
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v2

    .line 2290
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    if-eqz v2, :cond_28

    .line 2292
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 2296
    :cond_28
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    :goto_1c
    return v11

    .line 2269
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_73
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2273
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    .line 2274
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_1d

    .line 2277
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_29
    nop

    .line 2279
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_1d
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    .line 2280
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2281
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2282
    return v11

    .line 2260
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_74
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    move v1, v11

    nop

    :cond_2a
    move v0, v1

    .line 2263
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->cancelRecentsAnimation(Z)V

    .line 2264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2265
    return v11

    .line 2242
    .end local v0    # "_arg0":Z
    :pswitch_75
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 2245
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_1e

    .line 2248
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_2b
    nop

    .line 2251
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 2253
    .local v1, "_arg1":Landroid/app/IAssistDataReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v2

    .line 2254
    .local v2, "_arg2":Landroid/view/IRecentsAnimationRunner;
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    return v11

    .line 2238
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v2    # "_arg2":Landroid/view/IRecentsAnimationRunner;
    :pswitch_76
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startAssistantActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2234
    :pswitch_77
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startVoiceActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2218
    :pswitch_78
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2222
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 2223
    sget-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    .local v0, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_1f

    .line 2226
    .end local v0    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :cond_2c
    nop

    .line 2228
    .restart local v0    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :goto_1f
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2230
    return v11

    .line 2210
    .end local v0    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_79
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 2212
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    return v11

    .line 2201
    .end local v0    # "_result":Z
    :pswitch_7a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2204
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 2205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2206
    return v11

    .line 2192
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_7b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2195
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 2196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    return v11

    .line 2182
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_7c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2185
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v1

    .line 2186
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    return v11

    .line 2170
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 2174
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2175
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2176
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2177
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2178
    return v11

    .line 2156
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_7e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2160
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2162
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2163
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v3

    .line 2164
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    return v11

    .line 2146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_7f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2149
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v1

    .line 2150
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2151
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    return v11

    .line 2130
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_80
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2133
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 2134
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2135
    if-eqz v2, :cond_2d

    .line 2136
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    invoke-virtual {v2, v9, v11}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 2140
    :cond_2d
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2142
    :goto_20
    return v11

    .line 2121
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :pswitch_81
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2124
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 2125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    return v11

    .line 2103
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_82
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2107
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v11

    goto :goto_21

    :cond_2e
    move v2, v1

    .line 2108
    .local v2, "_arg1":Z
    :goto_21
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2109
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    if-eqz v3, :cond_2f

    .line 2111
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    invoke-virtual {v3, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 2115
    :cond_2f
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2117
    :goto_22
    return v11

    .line 2083
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_83
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    .line 2086
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_23

    .line 2089
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_30
    nop

    .line 2092
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2094
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2096
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2097
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 2098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    return v11

    .line 2063
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_84
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    .line 2066
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_24

    .line 2069
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_31
    nop

    .line 2072
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2074
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2076
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2077
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 2078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    return v11

    .line 2056
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_85
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 2058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    return v11

    .line 2049
    :pswitch_86
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    return v11

    .line 2038
    :pswitch_87
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2042
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    move v1, v11

    nop

    .line 2043
    .local v1, "_arg1":Z
    :cond_32
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 2044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2045
    return v11

    .line 2029
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_88
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2032
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    return v11

    .line 2012
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_89
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2016
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    .line 2017
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_25

    .line 2020
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_33
    nop

    .line 2022
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_25
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    .line 2023
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    return v11

    .line 2002
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_8a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2005
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    .line 2006
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    return v11

    .line 1984
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_8b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1988
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1989
    .local v2, "_arg1":I
    invoke-virtual {v6, v0, v2}, Landroid/app/IActivityManager$Stub;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 1990
    .local v3, "_result":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    if-eqz v3, :cond_34

    .line 1992
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    invoke-virtual {v3, v9, v11}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 1996
    :cond_34
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    :goto_26
    return v11

    .line 1970
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/app/ActivityManager$StackInfo;
    :pswitch_8c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 1972
    .local v0, "_result":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1973
    if-eqz v0, :cond_35

    .line 1974
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 1978
    :cond_35
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    :goto_27
    return v11

    .line 1961
    .end local v0    # "_result":Landroid/app/ActivityManager$StackInfo;
    :pswitch_8d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1964
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setFocusedStack(I)V

    .line 1965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1966
    return v11

    .line 1953
    .end local v0    # "_arg0":I
    :pswitch_8e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 1955
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1957
    return v11

    .line 1949
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_8f
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$resizeStack$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1936
    :pswitch_90
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1940
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1942
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    move v1, v11

    nop

    .line 1943
    .local v1, "_arg2":Z
    :cond_36
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->moveTaskToStack(IIZ)V

    .line 1944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1945
    return v11

    .line 1923
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    :pswitch_91
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1927
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1929
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    move v1, v11

    nop

    .line 1930
    .restart local v1    # "_arg2":Z
    :cond_37
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->setTaskWindowingMode(IIZ)V

    .line 1931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    return v11

    .line 1912
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    :pswitch_92
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1916
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    move v1, v11

    nop

    .line 1917
    .local v1, "_arg1":Z
    :cond_38
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 1918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    return v11

    .line 1903
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_93
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    move v1, v11

    nop

    :cond_39
    move v0, v1

    .line 1906
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    return v11

    .line 1890
    .end local v0    # "_arg0":Z
    :pswitch_94
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1894
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1896
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1897
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 1898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    return v11

    .line 1880
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_95
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1883
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1886
    return v11

    .line 1876
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_96
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$reportAssistContextExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1860
    :pswitch_97
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1863
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1864
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    if-eqz v2, :cond_3a

    .line 1866
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    .line 1870
    :cond_3a
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    :goto_28
    return v11

    .line 1844
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_98
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1847
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v2

    .line 1848
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    if-eqz v2, :cond_3b

    .line 1850
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    .line 1854
    :cond_3b
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    :goto_29
    return v11

    .line 1837
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_99
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->clearPendingBackup()V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    return v11

    .line 1823
    :pswitch_9a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1827
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    move v1, v11

    nop

    .line 1829
    .local v1, "_arg1":Z
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1830
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v3

    .line 1831
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1833
    return v11

    .line 1812
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_9b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1816
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1817
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    return v11

    .line 1801
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_9c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1805
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1806
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    return v11

    .line 1792
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_9d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1795
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 1796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1797
    return v11

    .line 1784
    .end local v0    # "_arg0":I
    :pswitch_9e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v0

    .line 1786
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1788
    return v11

    .line 1775
    .end local v0    # "_result":[I
    :pswitch_9f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    .line 1778
    .local v0, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    return v11

    .line 1764
    .end local v0    # "_arg0":Landroid/app/IUserSwitchObserver;
    :pswitch_a0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    .line 1768
    .restart local v0    # "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1771
    return v11

    .line 1750
    .end local v0    # "_arg0":Landroid/app/IUserSwitchObserver;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_a1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1754
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    move v1, v11

    nop

    .line 1756
    .local v1, "_arg1":Z
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 1757
    .local v2, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    .line 1758
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    return v11

    .line 1746
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v3    # "_result":I
    :pswitch_a2
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1736
    :pswitch_a3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1739
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderAForegroundService(Landroid/content/IIntentSender;)Z

    move-result v1

    .line 1740
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1741
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    return v11

    .line 1726
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Z
    :pswitch_a4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1729
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v1

    .line 1730
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    return v11

    .line 1717
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Z
    :pswitch_a5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1720
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    return v11

    .line 1707
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_a6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1710
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    .line 1711
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    return v11

    .line 1697
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_a7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1700
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    .line 1701
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    return v11

    .line 1684
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_a8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v11

    goto :goto_2a

    :cond_3e
    move v0, v1

    .line 1688
    .local v0, "_arg0":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    move v1, v11

    nop

    .line 1690
    .local v1, "_arg1":Z
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1691
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setLockScreenShown(ZZI)V

    .line 1692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1693
    return v11

    .line 1658
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_a9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1662
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    .line 1663
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg1":Landroid/content/Intent;
    goto :goto_2b

    .line 1666
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_40
    move-object v2, v0

    .line 1669
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1671
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1672
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg3":Landroid/content/Intent;
    goto :goto_2c

    .line 1675
    .end local v0    # "_arg3":Landroid/content/Intent;
    :cond_41
    nop

    .line 1677
    .restart local v0    # "_arg3":Landroid/content/Intent;
    :goto_2c
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/IActivityManager$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    .line 1678
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    return v11

    .line 1646
    .end local v0    # "_arg3":Landroid/content/Intent;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_aa
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1650
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    .line 1652
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    return v11

    .line 1632
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_ab
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1633
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1634
    .local v0, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    if-eqz v0, :cond_42

    .line 1636
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    invoke-virtual {v0, v9, v11}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 1640
    :cond_42
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    :goto_2d
    return v11

    .line 1622
    .end local v0    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_ac
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v1

    .line 1626
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    return v11

    .line 1606
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_ad
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1609
    .local v0, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    nop

    .line 1612
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1618
    return v11

    .line 1595
    .end local v0    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_ae
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1600
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    return v11

    .line 1575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_af
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1581
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1582
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v4

    .line 1583
    .local v4, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    if-eqz v4, :cond_43

    .line 1585
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1586
    invoke-virtual {v4, v9, v11}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    .line 1589
    :cond_43
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    :goto_2e
    return v11

    .line 1568
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":Landroid/app/ContentProviderHolder;
    :pswitch_b0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    return v11

    .line 1552
    :pswitch_b1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44

    .line 1555
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg0":Ljava/lang/CharSequence;
    goto :goto_2f

    .line 1558
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :cond_44
    nop

    .line 1561
    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    move v1, v11

    nop

    .line 1562
    .local v1, "_arg1":Z
    :cond_45
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    return v11

    .line 1542
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v1    # "_arg1":Z
    :pswitch_b2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1545
    .local v0, "_arg0":[I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v1

    .line 1546
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1548
    return v11

    .line 1528
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[J
    :pswitch_b3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    .line 1531
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .local v0, "_arg0":Landroid/content/res/Configuration;
    goto :goto_30

    .line 1534
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    :cond_46
    nop

    .line 1536
    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    :goto_30
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    return v11

    .line 1518
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    :pswitch_b4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1521
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v1

    .line 1522
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    return v11

    .line 1509
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Z
    :pswitch_b5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    .line 1512
    .local v0, "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1514
    return v11

    .line 1500
    .end local v0    # "_arg0":Landroid/app/IProcessObserver;
    :pswitch_b6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    .line 1503
    .restart local v0    # "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    return v11

    .line 1490
    .end local v0    # "_arg0":Landroid/app/IProcessObserver;
    :pswitch_b7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1493
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v1

    .line 1494
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1496
    return v11

    .line 1481
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1484
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setFocusedTask(I)V

    .line 1485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    return v11

    .line 1471
    .end local v0    # "_arg0":I
    :pswitch_b9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1474
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v1

    .line 1475
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    return v11

    .line 1460
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_ba
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    move v1, v11

    nop

    .line 1465
    .local v1, "_arg1":Z
    :cond_47
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    return v11

    .line 1450
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_bb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    .line 1454
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    return v11

    .line 1439
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_bc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1444
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    return v11

    .line 1429
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_bd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    .line 1433
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    return v11

    .line 1420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_be
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1423
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    return v11

    .line 1412
    .end local v0    # "_arg0":I
    :pswitch_bf
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 1414
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    return v11

    .line 1404
    .end local v0    # "_result":I
    :pswitch_c0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1407
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activitySlept(Landroid/os/IBinder;)V

    .line 1408
    return v11

    .line 1392
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_c1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1396
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1397
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v2

    .line 1398
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    return v11

    .line 1388
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_c2
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1384
    :pswitch_c3
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1380
    :pswitch_c4
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$checkGrantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1360
    :pswitch_c5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1364
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    .line 1365
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg1":Landroid/net/Uri;
    goto :goto_31

    .line 1368
    .end local v0    # "_arg1":Landroid/net/Uri;
    :cond_48
    nop

    .line 1371
    .restart local v0    # "_arg1":Landroid/net/Uri;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1373
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1374
    .local v3, "_arg3":I
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    return v11

    .line 1356
    .end local v0    # "_arg1":Landroid/net/Uri;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_c6
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermissionFromOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1346
    :pswitch_c7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1350
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1352
    return v11

    .line 1329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_c8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    .line 1332
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .local v0, "_arg0":Landroid/net/Uri;
    goto :goto_32

    .line 1335
    .end local v0    # "_arg0":Landroid/net/Uri;
    :cond_49
    nop

    .line 1338
    .restart local v0    # "_arg0":Landroid/net/Uri;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1339
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    .line 1340
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1342
    return v11

    .line 1325
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c9
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$crashApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1317
    :pswitch_ca
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 1319
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    return v11

    .line 1306
    .end local v0    # "_result":Z
    :pswitch_cb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1310
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    move v1, v11

    nop

    .line 1311
    .local v1, "_arg1":Z
    :cond_4a
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    return v11

    .line 1296
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_cc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1299
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v1

    .line 1300
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    return v11

    .line 1278
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_cd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1282
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1284
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b

    .line 1285
    sget-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$ViolationInfo;

    .local v0, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    goto :goto_33

    .line 1288
    .end local v0    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    :cond_4b
    nop

    .line 1290
    .restart local v0    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    :goto_33
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    return v11

    .line 1271
    .end local v0    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_ce
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    return v11

    .line 1263
    :pswitch_cf
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    .line 1265
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1267
    return v11

    .line 1259
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_d0
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityWithConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1249
    :pswitch_d1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1252
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v1

    .line 1253
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    return v11

    .line 1245
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_d2
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAndWait$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1237
    :pswitch_d3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v0

    .line 1239
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    return v11

    .line 1226
    .end local v0    # "_result":Z
    :pswitch_d4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1231
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    return v11

    .line 1205
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_d5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1209
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1211
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    move v1, v11

    nop

    .line 1213
    .local v1, "_arg2":Z
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    .line 1214
    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .local v0, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    goto :goto_34

    .line 1217
    .end local v0    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :cond_4d
    nop

    .line 1219
    .restart local v0    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :goto_34
    invoke-virtual {v6, v2, v3, v1, v0}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;)Z

    move-result v4

    .line 1220
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    return v11

    .line 1190
    .end local v0    # "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1194
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1198
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1199
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    return v11

    .line 1186
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_d7
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1175
    :pswitch_d8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1180
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    return v11

    .line 1165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_d9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1168
    .local v0, "_arg0":[I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 1169
    .local v1, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1171
    return v11

    .line 1156
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Landroid/os/Debug$MemoryInfo;
    :pswitch_da
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    return v11

    .line 1141
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_db
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1147
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1149
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1150
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    return v11

    .line 1132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_dc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    return v11

    .line 1128
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_dd
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1118
    :pswitch_de
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1121
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    .line 1122
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    return v11

    .line 1104
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":I
    :pswitch_df
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    .line 1107
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    goto :goto_35

    .line 1110
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :cond_4e
    nop

    .line 1112
    .restart local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :goto_35
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    return v11

    .line 1093
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_e0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1098
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    return v11

    .line 1079
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_e1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1085
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1086
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    .line 1087
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    return v11

    .line 1072
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_e2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    return v11

    .line 1065
    :pswitch_e3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    return v11

    .line 1055
    :pswitch_e4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1058
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v1

    .line 1059
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    return v11

    .line 1051
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e5
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1032
    :pswitch_e6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 1035
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_36

    .line 1038
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_4f
    nop

    .line 1041
    .restart local v0    # "_arg0":Landroid/content/Intent;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1045
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1047
    return v11

    .line 1018
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_e7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 1020
    .local v0, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    if-eqz v0, :cond_50

    .line 1022
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    invoke-virtual {v0, v9, v11}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    .line 1026
    :cond_50
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    :goto_37
    return v11

    .line 1010
    .end local v0    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_e8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1012
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1014
    return v11

    .line 994
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_e9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 997
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    .line 998
    .local v2, "_result":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    if-eqz v2, :cond_51

    .line 1000
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    invoke-virtual {v2, v9, v11}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_38

    .line 1004
    :cond_51
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    :goto_38
    return v11

    .line 982
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_ea
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 986
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 987
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v2

    .line 988
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 990
    return v11

    .line 968
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :pswitch_eb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 972
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_52

    move v1, v11

    nop

    .line 975
    .local v1, "_arg2":Z
    :cond_52
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v3

    .line 976
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    return v11

    .line 957
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_ec
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 962
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    return v11

    .line 941
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_ed
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 945
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    move v1, v11

    nop

    .line 947
    .local v1, "_arg1":Z
    :cond_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 949
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 950
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v4

    .line 951
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    return v11

    .line 933
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_ee
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    .line 935
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 937
    return v11

    .line 917
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_ef
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 920
    .local v0, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    nop

    .line 923
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 929
    return v11

    .line 905
    .end local v0    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_f0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 909
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    move v1, v11

    nop

    .line 910
    .restart local v1    # "_arg1":Z
    :cond_54
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 911
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    return v11

    .line 901
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_f1
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 886
    :pswitch_f2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 890
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 892
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    move v1, v11

    nop

    .line 894
    .local v1, "_arg2":Z
    :cond_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v2, v1, v3}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    return v11

    .line 868
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_f3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 872
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_56

    .line 873
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg1":Landroid/content/Intent;
    goto :goto_39

    .line 876
    .end local v0    # "_arg1":Landroid/content/Intent;
    :cond_56
    nop

    .line 879
    .restart local v0    # "_arg1":Landroid/content/Intent;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_57

    move v1, v11

    nop

    .line 880
    .restart local v1    # "_arg2":Z
    :cond_57
    invoke-virtual {v6, v2, v0, v1}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    return v11

    .line 858
    .end local v0    # "_arg1":Landroid/content/Intent;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_f4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 861
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v1

    .line 862
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    return v11

    .line 847
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_f5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 851
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 852
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    return v11

    .line 836
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_f6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 840
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_58

    move v1, v11

    nop

    .line 841
    .local v1, "_arg1":Z
    :cond_58
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    return v11

    .line 832
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_f7
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 808
    :pswitch_f8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 812
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    .line 813
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .local v2, "_arg1":Landroid/content/Intent;
    goto :goto_3a

    .line 816
    .end local v2    # "_arg1":Landroid/content/Intent;
    :cond_59
    move-object v2, v0

    .line 819
    .restart local v2    # "_arg1":Landroid/content/Intent;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a

    .line 820
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_3b

    .line 823
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_5a
    nop

    .line 825
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_3b
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 826
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    return v11

    .line 801
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_result":Z
    :pswitch_f9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    return v11

    .line 790
    :pswitch_fa
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 794
    .local v0, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 795
    .local v1, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    return v11

    .line 779
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_fb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 783
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 784
    .restart local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    return v11

    .line 769
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_fc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 772
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    return v11

    .line 760
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_fd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 763
    .restart local v0    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    return v11

    .line 756
    .end local v0    # "_arg0":Landroid/content/IIntentSender;
    :pswitch_fe
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 748
    :pswitch_ff
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 751
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 752
    return v11

    .line 734
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_100
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 738
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 740
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 742
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 743
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 744
    return v11

    .line 714
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_101
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 718
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 720
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 721
    .local v3, "_arg2":I
    invoke-virtual {v6, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 722
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v4, :cond_5b

    .line 724
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    invoke-virtual {v4, v9, v11}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3c

    .line 728
    :cond_5b
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    :goto_3c
    return v11

    .line 705
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_102
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    return v11

    .line 694
    .end local v0    # "_arg0":I
    :pswitch_103
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 698
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c

    move v1, v11

    nop

    .line 699
    .local v1, "_arg1":Z
    :cond_5c
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    return v11

    .line 683
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Z
    :pswitch_104
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    .line 687
    .local v0, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d

    move v1, v11

    nop

    .line 688
    .restart local v1    # "_arg1":Z
    :cond_5d
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    return v11

    .line 679
    .end local v0    # "_arg0":Landroid/app/IActivityController;
    .end local v1    # "_arg1":Z
    :pswitch_105
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 675
    :pswitch_106
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 671
    :pswitch_107
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 657
    :pswitch_108
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 663
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 664
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    .line 665
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    return v11

    .line 649
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_109
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v0

    .line 651
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    return v11

    .line 640
    .end local v0    # "_result":I
    :pswitch_10a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    return v11

    .line 630
    .end local v0    # "_arg0":I
    :pswitch_10b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 633
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    return v11

    .line 614
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 617
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v2

    .line 618
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v2, :cond_5e

    .line 620
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    invoke-virtual {v2, v9, v11}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3d

    .line 624
    :cond_5e
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    :goto_3d
    return v11

    .line 595
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_10d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 598
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    .line 601
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_5f
    nop

    .line 604
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 606
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 607
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v3

    .line 608
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    return v11

    .line 580
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_10e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    .line 583
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .local v0, "_arg0":Landroid/content/res/Configuration;
    goto :goto_3f

    .line 586
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    :cond_60
    nop

    .line 588
    .restart local v0    # "_arg0":Landroid/content/res/Configuration;
    :goto_3f
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 589
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    return v11

    .line 566
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_result":Z
    :pswitch_10f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 568
    .local v0, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v0, :cond_61

    .line 570
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    invoke-virtual {v0, v9, v11}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_40

    .line 574
    :cond_61
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    :goto_40
    return v11

    .line 548
    .end local v0    # "_result":Landroid/content/res/Configuration;
    :pswitch_110
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 552
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_62

    .line 555
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_41

    .line 558
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_62
    nop

    .line 560
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_41
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    return v11

    .line 532
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":I
    :pswitch_111
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 536
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63

    .line 537
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_42

    .line 540
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_63
    nop

    .line 542
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_42
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    return v11

    .line 528
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_112
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 519
    :pswitch_113
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    move v1, v11

    nop

    :cond_64
    move v0, v1

    .line 522
    .local v0, "_arg0":Z
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    return v11

    .line 508
    .end local v0    # "_arg0":Z
    :pswitch_114
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    return v11

    .line 495
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_115
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_65

    move v2, v11

    goto :goto_43

    :cond_65
    move v2, v1

    .line 501
    .local v2, "_arg1":Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_66

    move v1, v11

    nop

    .line 502
    .local v1, "_arg2":Z
    :cond_66
    invoke-virtual {v6, v0, v2, v1}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    return v11

    .line 486
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":Z
    :pswitch_116
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 489
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityResumed(Landroid/os/IBinder;)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    return v11

    .line 468
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_117
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 472
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_67

    .line 473
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg1":Landroid/content/Intent;
    goto :goto_44

    .line 476
    .end local v0    # "_arg1":Landroid/content/Intent;
    :cond_67
    nop

    .line 479
    .restart local v0    # "_arg1":Landroid/content/Intent;
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 480
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v6, v1, v0, v2}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    return v11

    .line 458
    .end local v0    # "_arg1":Landroid/content/Intent;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_118
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 461
    .local v0, "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v1

    .line 462
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    return v11

    .line 454
    .end local v0    # "_arg0":Landroid/app/IServiceConnection;
    .end local v1    # "_result":Z
    :pswitch_119
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 433
    :pswitch_11a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 437
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_68

    .line 438
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg1":Landroid/content/Intent;
    goto :goto_45

    .line 441
    .end local v0    # "_arg1":Landroid/content/Intent;
    :cond_68
    nop

    .line 444
    .restart local v0    # "_arg1":Landroid/content/Intent;
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 447
    .local v3, "_arg3":I
    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    .line 448
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    return v11

    .line 429
    .end local v0    # "_arg1":Landroid/content/Intent;
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_11b
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 408
    :pswitch_11c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69

    .line 411
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    .line 414
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_69
    nop

    .line 416
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_46
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 417
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v2, :cond_6a

    .line 419
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {v2, v9, v11}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_47

    .line 423
    :cond_6a
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    :goto_47
    return v11

    .line 395
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :pswitch_11d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 399
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    return v11

    .line 381
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 385
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v3

    .line 389
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return v11

    .line 370
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_11f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 374
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    sget-object v1, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 375
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    return v11

    .line 348
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :pswitch_120
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 352
    .restart local v0    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    move v4, v11

    goto :goto_48

    :cond_6b
    move v4, v1

    .line 357
    .local v4, "_arg3":Z
    :goto_48
    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v5

    .line 358
    .local v5, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v5, :cond_6c

    .line 360
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {v5, v9, v11}, Landroid/app/ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_49

    .line 364
    :cond_6c
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    :goto_49
    return v11

    .line 336
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_result":Landroid/app/ContentProviderHolder;
    :pswitch_121
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 340
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    move v1, v11

    nop

    .line 341
    .local v1, "_arg1":Z
    :cond_6d
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 342
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    return v11

    .line 327
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_122
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->moveTaskBackwards(I)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    return v11

    .line 309
    .end local v0    # "_arg0":I
    :pswitch_123
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6e

    .line 316
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_4a

    .line 319
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_6e
    nop

    .line 321
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_4a
    invoke-virtual {v6, v1, v2, v0}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v11

    .line 295
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_124
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v3

    .line 303
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 305
    return v11

    .line 285
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_125
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 289
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 291
    return v11

    .line 269
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_126
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 272
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v2

    .line 273
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v2, :cond_6f

    .line 275
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v2, v9, v11}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b

    .line 279
    :cond_6f
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    :goto_4b
    return v11

    .line 259
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_127
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 262
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v11

    .line 230
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_128
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 234
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_70

    .line 235
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_4c

    .line 238
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_70
    move-object v2, v0

    .line 241
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_71

    .line 242
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .local v3, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_4d

    .line 245
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    :cond_71
    move-object v3, v0

    .line 248
    .restart local v3    # "_arg2":Landroid/os/PersistableBundle;
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    .line 249
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "_arg3":Ljava/lang/CharSequence;
    goto :goto_4e

    .line 252
    .end local v0    # "_arg3":Ljava/lang/CharSequence;
    :cond_72
    nop

    .line 254
    .restart local v0    # "_arg3":Ljava/lang/CharSequence;
    :goto_4e
    invoke-virtual {v6, v1, v2, v3, v0}, Landroid/app/IActivityManager$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 255
    return v11

    .line 221
    .end local v0    # "_arg3":Ljava/lang/CharSequence;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_129
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 224
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v11

    .line 204
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_12a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_73

    .line 209
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .local v0, "_arg1":Landroid/content/res/Configuration;
    goto :goto_4f

    .line 212
    .end local v0    # "_arg1":Landroid/content/res/Configuration;
    :cond_73
    nop

    .line 215
    .restart local v0    # "_arg1":Landroid/content/res/Configuration;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_74

    move v1, v11

    nop

    .line 216
    .local v1, "_arg2":Z
    :cond_74
    invoke-virtual {v6, v2, v0, v1}, Landroid/app/IActivityManager$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 217
    return v11

    .line 193
    .end local v0    # "_arg1":Landroid/content/res/Configuration;
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_12b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 197
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 198
    .local v1, "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    return v11

    .line 189
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    .end local v1    # "_arg1":J
    :pswitch_12c
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 171
    :pswitch_12d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 175
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    .line 176
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg1":Landroid/content/Intent;
    goto :goto_50

    .line 179
    .end local v0    # "_arg1":Landroid/content/Intent;
    :cond_75
    nop

    .line 182
    .restart local v0    # "_arg1":Landroid/content/Intent;
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg2":I
    invoke-virtual {v6, v1, v0, v2}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v11

    .line 167
    .end local v0    # "_arg1":Landroid/content/Intent;
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg2":I
    :pswitch_12e
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 158
    :pswitch_12f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 161
    .local v0, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v11

    .line 154
    .end local v0    # "_arg0":Landroid/content/IIntentReceiver;
    :pswitch_130
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 133
    :pswitch_131
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 137
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_76

    .line 140
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg2":Landroid/content/Intent;
    goto :goto_51

    .line 143
    .end local v0    # "_arg2":Landroid/content/Intent;
    :cond_76
    nop

    .line 146
    .restart local v0    # "_arg2":Landroid/content/Intent;
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .local v3, "_arg3":I
    invoke-virtual {v6, v1, v2, v0, v3}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    .line 148
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v11

    .line 126
    .end local v0    # "_arg2":Landroid/content/Intent;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_132
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v11

    .line 122
    :pswitch_133
    invoke-direct {v6, v8, v9}, Landroid/app/IActivityManager$Stub;->onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 106
    :pswitch_134
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 110
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_77

    .line 111
    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .local v0, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    goto :goto_52

    .line 114
    .end local v0    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :cond_77
    nop

    .line 116
    .restart local v0    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :goto_52
    invoke-virtual {v6, v1, v0}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v11

    .line 94
    .end local v0    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_135
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v2

    .line 100
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v11

    .line 85
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_136
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    .line 88
    .local v0, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v11

    .line 70
    .end local v0    # "_arg0":Landroid/app/IUidObserver;
    :pswitch_137
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v11

    .line 54
    .end local v0    # "_arg0":Landroid/app/IUidObserver;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_138
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 58
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_78

    .line 60
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2, v9, v11}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_53

    .line 64
    :cond_78
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_53
    return v11

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_79
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
