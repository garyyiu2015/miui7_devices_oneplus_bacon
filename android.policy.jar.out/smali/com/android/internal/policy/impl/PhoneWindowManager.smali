.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;
    }
.end annotation


# static fields
.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENRECORD_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_IN_APP_SEARCH:I = 0x5

.field private static final KEY_ACTION_KILL_APP:I = 0x6

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x7

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_SEARCH:I = 0x3

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x4

.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK:I = 0x5

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field static final PRINT_ANIM:Z = false

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field private static final SCREENRECORD_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3ffffffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VOLUME_DOUBLETAP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x258L

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static currentPackageName:Ljava/lang/String;

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DEBUG_BOOTMSG:Z

.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAppSwitchLongPressed:Z

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mBackKillTimeout:I

.field mBackLongPressed:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDeviceHardwareKeys:I

.field private mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDoubleTapOnHomeBehavior:I

.field private final mDoubleTapRunnable:Ljava/lang/Runnable;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasMenuKeyEnabled:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field private mIsLongPress:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKillTask:Ljava/lang/Runnable;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnAssistBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMenuPressed:Z

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingPowerKeyUpCanceled:Z

.field mPointerLocationMode:I

.field mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field private mPowerMenuReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

.field mPreloadedRecentApps:Z

.field private mPressOnAppSwitchBehavior:I

.field private mPressOnAssistBehavior:I

.field private mPressOnMenuBehavior:I

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffReason:I

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenrecordChordEnabled:Z

.field mScreenrecordConnection:Landroid/content/ServiceConnection;

.field final mScreenrecordLock:Ljava/lang/Object;

.field private final mScreenrecordRunnable:Ljava/lang/Runnable;

.field final mScreenrecordTimeout:Ljava/lang/Runnable;

.field private mScreenshotChordEnabled:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTouchExplorationEnabled:Z

.field mTranslucentDecorEnabled:Z

.field mUiMode:I

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserNavBarHeight:I

.field mUserNavBarHeightLand:I

.field mUserNavBarWidth:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolBtnMusicControls:Z

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeKeysDoubleTapEnabled:Z

.field private mVolumeKeysDownTime:J

.field private mVolumeUpKeyConsumedByScreenrecordChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mVolumeWakeScreen:Z

.field mWantsNavigationBar:Z

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 208
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    const-string v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 447
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 448
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 450
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 451
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 452
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 2362
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v7, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 257
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 261
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 263
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 264
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 265
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWantsNavigationBar:Z

    .line 266
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 267
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 268
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 269
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 270
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 275
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 281
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 282
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 293
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 300
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 310
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 312
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 313
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 316
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 322
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 323
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 324
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 326
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 327
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 328
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 329
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 330
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 332
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 437
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 439
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 442
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 444
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 455
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 467
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 490
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 491
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 492
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 493
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 494
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 495
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 496
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 497
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 513
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 514
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 515
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 516
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 518
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 519
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 520
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 521
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 567
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 714
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v2, 0x4000000

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x4000000

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 721
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "NavigationBar"

    const/high16 v2, 0x8000000

    const/high16 v3, 0x20000000

    const/high16 v4, -0x80000000

    const/4 v5, 0x2

    const/high16 v6, 0x8000000

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    .line 912
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 955
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapRunnable:Ljava/lang/Runnable;

    .line 973
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 980
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    .line 987
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKillTask:Ljava/lang/Runnable;

    .line 1072
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3093
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3160
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4336
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 4337
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordLock:Ljava/lang/Object;

    .line 4338
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4339
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 4341
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 4352
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordTimeout:Ljava/lang/Runnable;

    .line 4945
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4966
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 4981
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5459
    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5476
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_BOOTMSG:Z

    .line 5600
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerMenuReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsLongPress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method private applyLidSwitchState()V
    .locals 3

    .prologue
    .line 5639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setKeyboardVisibility(Z)V

    .line 5641
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 5642
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 5644
    :cond_0
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3534
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 3537
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 3538
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3539
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3540
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3541
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3549
    :cond_3
    :goto_0
    return-void

    .line 3543
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3544
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3545
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3546
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    .prologue
    .line 6023
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    .prologue
    .line 2329
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2330
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 2332
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    :cond_0
    :goto_0
    return-void

    .line 2333
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 837
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 840
    :cond_1
    return-void
.end method

.method private cancelPendingScreenrecordChordAction()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 906
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    .line 3030
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 3031
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3033
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3034
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3035
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3043
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3037
    :catch_0
    move-exception v0

    .line 3038
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3040
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .prologue
    .line 5996
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 5997
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 5998
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 5999
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 6001
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1637
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    if-eqz v1, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1640
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 1643
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    .line 1644
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1646
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1647
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1649
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private dpToPixels(ILandroid/content/Context;)I
    .locals 2
    .param p1, "dp"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 6012
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 6013
    .local v0, "d":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private enablePointerLocation()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1607
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 1608
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1609
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1611
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1614
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1615
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1619
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1621
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1624
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1625
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1628
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1629
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1631
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 1632
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1634
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 5100
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5101
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5105
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5109
    :goto_0
    if-eqz p1, :cond_0

    .line 5110
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5112
    :cond_0
    return-void

    .line 5102
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2350
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2352
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2353
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 2340
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 5419
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 5420
    .local v0, "ar":[I
    if-nez v0, :cond_1

    .line 5421
    const/4 v2, 0x0

    .line 5427
    :cond_0
    return-object v2

    .line 5423
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 5424
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 5425
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 5424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getScreenrecordChordLongPressDelay()J
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 901
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 892
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3010
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3012
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 2345
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    .line 2962
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 2963
    .local v0, "actions":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 2964
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 2966
    .local v1, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 2970
    .end local v1    # "delayMillis":J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private interceptPowerKeyDown(Z)V
    .locals 4
    .param p1, "handled"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 820
    if-nez p1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 823
    :cond_0
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .locals 3
    .param p1, "canceled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 826
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 828
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 830
    :cond_0
    return v0
.end method

.method private interceptScreenrecordChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 873
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    .line 875
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 876
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 878
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenrecordChord:Z

    .line 879
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 881
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenrecordChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 884
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 859
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 862
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 864
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 865
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 867
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 870
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private interceptVolumeDoubleTapChord()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x96

    const/4 v6, 0x1

    .line 843
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeysDoubleTapEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 846
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeysDownTime:J

    const-wide/16 v4, 0x258

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    :cond_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 853
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenrecordChord:Z

    .line 854
    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeysDownTime:J

    .line 856
    .end local v0    # "now":J
    :cond_1
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 5379
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBuiltInKeyboardVisible()Z
    .locals 1

    .prologue
    .line 1793
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5809
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1782
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1788
    :cond_0
    :goto_0
    return v0

    .line 1784
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1786
    :pswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1782
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 2
    .param p1, "vis"    # I

    .prologue
    .line 6004
    const/16 v0, 0x1800

    .line 6005
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 5375
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4849
    sparse-switch p1, :sswitch_data_0

    .line 4872
    :cond_0
    :goto_0
    return v0

    .line 4854
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 4870
    goto :goto_0

    .line 4849
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_0
.end method

.method private launchAssistAction()V
    .locals 6

    .prologue
    .line 2993
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2994
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 2996
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2997
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3001
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3006
    :cond_0
    :goto_0
    return-void

    .line 3002
    :catch_0
    move-exception v0

    .line 3003
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    .line 2974
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2977
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2978
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2982
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 2983
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 2984
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 2986
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2990
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 2987
    :catch_0
    move-exception v0

    .line 2988
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 3948
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3949
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3950
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 3951
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3953
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3954
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3955
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_1

    .line 3956
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 3961
    :cond_1
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 5794
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5806
    :cond_0
    :goto_0
    return-void

    .line 5797
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5799
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5802
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 5804
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 5805
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private performKeyAction(I)V
    .locals 4
    .param p1, "behavior"    # I

    .prologue
    .line 1043
    packed-switch p1, :pswitch_data_0

    .line 1070
    :goto_0
    :pswitch_0
    return-void

    .line 1047
    :pswitch_1
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1050
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 1053
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_0

    .line 1056
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_0

    .line 1059
    :pswitch_5
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1062
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKillTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackKillTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1065
    :pswitch_7
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 3016
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3018
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3019
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3020
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3027
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3025
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private readRotation(I)I
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 1653
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1654
    .local v0, "rotation":I
    sparse-switch v0, :sswitch_data_0

    .line 1667
    .end local v0    # "rotation":I
    :goto_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 1656
    .restart local v0    # "rotation":I
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1658
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 1660
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    .line 1662
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_1

    .line 1664
    .end local v0    # "rotation":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1654
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 5
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5003
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 5004
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v2

    .line 5005
    .local v2, "sb":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 5006
    .local v1, "nb":Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_5

    .line 5007
    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5008
    .local v0, "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    xor-int v3, v2, v1

    if-eqz v3, :cond_2

    if-eq v0, p1, :cond_2

    .line 5010
    monitor-exit v4

    .line 5018
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1
    return-void

    .line 5007
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 5012
    .restart local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 5013
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 5014
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 5015
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 5017
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_5
    monitor-exit v4

    goto :goto_1

    .end local v1    # "nb":Z
    .end local v2    # "sb":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5186
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5188
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5192
    :cond_0
    :goto_0
    return-void

    .line 5189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 4

    .prologue
    .line 3046
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3047
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3049
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3050
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3051
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3058
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3053
    :catch_0
    move-exception v0

    .line 3054
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3056
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 1030
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v13

    .line 1031
    .local v13, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1033
    .local v1, "now":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x101

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1036
    .local v0, "downEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 1038
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1039
    const/4 v3, 0x0

    invoke-virtual {v13, v14, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1040
    return-void
.end method

.method private updateKeyAssignments()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1302
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_6

    move v5, v8

    .line 1303
    .local v5, "hasMenu":Z
    :goto_0
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_7

    move v4, v8

    .line 1304
    .local v4, "hasHome":Z
    :goto_1
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_8

    move v2, v8

    .line 1305
    .local v2, "hasBack":Z
    :goto_2
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_9

    move v1, v8

    .line 1306
    .local v1, "hasAssist":Z
    :goto_3
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_a

    move v0, v8

    .line 1307
    .local v0, "hasAppSwitch":Z
    :goto_4
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_b

    move v3, v8

    .line 1308
    .local v3, "hasCamera":Z
    :goto_5
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1311
    .local v7, "resolver":Landroid/content/ContentResolver;
    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 1312
    if-eqz v5, :cond_0

    if-eqz v1, :cond_c

    .line 1313
    :cond_0
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1317
    :goto_6
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 1318
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 1319
    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 1320
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1322
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x10e0028

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1324
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v10, :cond_1

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v13, 0x5

    if-le v10, v13, :cond_2

    .line 1326
    :cond_1
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1329
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x10e0029

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1331
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v10, :cond_3

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v13, 0x5

    if-le v10, v13, :cond_4

    .line 1333
    :cond_3
    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1336
    :cond_4
    const-string v10, "hardware_key_rebinding"

    invoke-static {v7, v10, v9, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v8, :cond_d

    move v6, v8

    .line 1338
    .local v6, "keyRebindingEnabled":Z
    :goto_7
    if-nez v6, :cond_e

    .line 1339
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    .line 1392
    :cond_5
    :goto_8
    return-void

    .end local v0    # "hasAppSwitch":Z
    .end local v1    # "hasAssist":Z
    .end local v2    # "hasBack":Z
    .end local v3    # "hasCamera":Z
    .end local v4    # "hasHome":Z
    .end local v5    # "hasMenu":Z
    .end local v6    # "keyRebindingEnabled":Z
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    move v5, v9

    .line 1302
    goto :goto_0

    .restart local v5    # "hasMenu":Z
    :cond_7
    move v4, v9

    .line 1303
    goto :goto_1

    .restart local v4    # "hasHome":Z
    :cond_8
    move v2, v9

    .line 1304
    goto :goto_2

    .restart local v2    # "hasBack":Z
    :cond_9
    move v1, v9

    .line 1305
    goto :goto_3

    .restart local v1    # "hasAssist":Z
    :cond_a
    move v0, v9

    .line 1306
    goto :goto_4

    .restart local v0    # "hasAppSwitch":Z
    :cond_b
    move v3, v9

    .line 1307
    goto :goto_5

    .line 1315
    .restart local v3    # "hasCamera":Z
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    :cond_c
    iput v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    goto :goto_6

    :cond_d
    move v6, v9

    .line 1336
    goto :goto_7

    .line 1343
    .restart local v6    # "keyRebindingEnabled":Z
    :cond_e
    if-eqz v4, :cond_10

    .line 1344
    const-string v13, "key_home_long_press_action"

    if-eqz v0, :cond_19

    move v10, v9

    :goto_9
    invoke-static {v7, v13, v10, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1348
    const-string v10, "key_home_double_tap_action"

    iget v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v7, v10, v13, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1351
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eq v10, v8, :cond_f

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v10, v8, :cond_1a

    :cond_f
    move v10, v8

    :goto_a
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    .line 1354
    :cond_10
    if-eqz v5, :cond_12

    .line 1355
    const-string v10, "key_menu_action"

    invoke-static {v7, v10, v8, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    .line 1358
    const-string v13, "key_menu_long_press_action"

    if-eqz v1, :cond_1b

    move v10, v9

    :goto_b
    invoke-static {v7, v13, v10, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 1362
    iget-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    if-eq v10, v8, :cond_11

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ne v10, v8, :cond_1c

    :cond_11
    move v10, v8

    :goto_c
    or-int/2addr v10, v13

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    .line 1365
    :cond_12
    if-eqz v2, :cond_14

    .line 1366
    const-string v10, "key_back_long_press_action"

    invoke-static {v7, v10, v9, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 1369
    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eq v10, v8, :cond_13

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v10, v8, :cond_1d

    :cond_13
    move v10, v8

    :goto_d
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    .line 1372
    :cond_14
    if-eqz v1, :cond_16

    .line 1373
    const-string v10, "key_assist_action"

    invoke-static {v7, v10, v12, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    .line 1376
    const-string v10, "key_assist_long_press_action"

    const/4 v12, 0x4

    invoke-static {v7, v10, v12, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    .line 1379
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    if-eq v10, v8, :cond_15

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    if-ne v10, v8, :cond_1e

    :cond_15
    move v10, v8

    :goto_e
    or-int/2addr v10, v12

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    .line 1382
    :cond_16
    if-eqz v0, :cond_5

    .line 1383
    const-string v10, "key_app_switch_action"

    invoke-static {v7, v10, v11, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    .line 1386
    const-string v10, "key_app_switch_long_press_action"

    invoke-static {v7, v10, v9, v14}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1389
    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    if-eq v11, v8, :cond_17

    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ne v11, v8, :cond_18

    :cond_17
    move v9, v8

    :cond_18
    or-int v8, v10, v9

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasMenuKeyEnabled:Z

    goto/16 :goto_8

    :cond_19
    move v10, v11

    .line 1344
    goto/16 :goto_9

    :cond_1a
    move v10, v9

    .line 1351
    goto/16 :goto_a

    :cond_1b
    move v10, v12

    .line 1358
    goto :goto_b

    :cond_1c
    move v10, v9

    .line 1362
    goto :goto_c

    :cond_1d
    move v10, v9

    .line 1369
    goto :goto_d

    :cond_1e
    move v10, v9

    .line 1379
    goto :goto_e
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 5614
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 5615
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 5617
    .local v0, "enable":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 5618
    if-eqz v0, :cond_2

    .line 5620
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5625
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 5627
    :cond_0
    monitor-exit v2

    .line 5628
    return-void

    .line 5615
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5623
    .restart local v0    # "enable":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5627
    .end local v0    # "enable":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 20
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 5927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5930
    .local v15, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 5931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 5934
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v14, 0x1

    .line 5935
    .local v14, "statusBarHasFocus":Z
    :goto_1
    if-eqz v14, :cond_0

    .line 5936
    const v6, -0x3fffe7fa

    .line 5942
    .local v6, "flags":I
    const v18, 0x3fffe7f9    # 1.9992667f

    and-int v18, v18, p3

    and-int v19, p2, v6

    or-int p3, v18, v19

    .line 5945
    .end local v6    # "flags":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v18

    if-nez v18, :cond_1

    .line 5946
    const v18, 0x3fffffff    # 1.9999999f

    and-int p3, p3, v18

    .line 5950
    :cond_1
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/4 v10, 0x1

    .line 5952
    .local v10, "immersiveSticky":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/4 v9, 0x1

    .line 5956
    .local v9, "hideStatusBarWM":Z
    :goto_3
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_b

    const/4 v8, 0x1

    .line 5958
    .local v8, "hideStatusBarSysui":Z
    :goto_4
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_c

    const/4 v7, 0x1

    .line 5961
    .local v7, "hideNavBarSysui":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    if-nez v9, :cond_3

    if-eqz v8, :cond_2

    if-nez v10, :cond_3

    :cond_2
    if-eqz v14, :cond_d

    :cond_3
    const/16 v17, 0x1

    .line 5967
    .local v17, "transientStatusBarAllowed":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    if-eqz v7, :cond_e

    if-eqz v10, :cond_e

    const/16 v16, 0x1

    .line 5971
    .local v16, "transientNavBarAllowed":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_f

    if-nez v17, :cond_f

    if-eqz v8, :cond_f

    const/4 v5, 0x1

    .line 5973
    .local v5, "denyTransientStatus":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_10

    if-nez v16, :cond_10

    const/4 v4, 0x1

    .line 5975
    .local v4, "denyTransientNav":Z
    :goto_9
    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    .line 5977
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 5980
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 5983
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    .line 5984
    .local v12, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v11

    .line 5985
    .local v11, "newImmersiveMode":Z
    if-eqz p1, :cond_6

    if-eq v12, v11, :cond_6

    .line 5986
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    .line 5987
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;Z)V

    .line 5990
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 5992
    return p3

    .line 5927
    .end local v4    # "denyTransientNav":Z
    .end local v5    # "denyTransientStatus":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersiveSticky":Z
    .end local v11    # "newImmersiveMode":Z
    .end local v12    # "oldImmersiveMode":Z
    .end local v14    # "statusBarHasFocus":Z
    .end local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v16    # "transientNavBarAllowed":Z
    .end local v17    # "transientStatusBarAllowed":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_0

    .line 5934
    .restart local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 5950
    .restart local v14    # "statusBarHasFocus":Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5952
    .restart local v10    # "immersiveSticky":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 5956
    .restart local v9    # "hideStatusBarWM":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 5958
    .restart local v8    # "hideStatusBarSysui":Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 5961
    .restart local v7    # "hideNavBarSysui":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 5967
    .restart local v17    # "transientStatusBarAllowed":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 5971
    .restart local v16    # "transientNavBarAllowed":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_8

    .line 5973
    .restart local v5    # "denyTransientStatus":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_9
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 5877
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5878
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v4, :cond_1

    move v0, v5

    .line 5922
    :goto_1
    return v0

    .line 5877
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 5881
    .restart local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d4

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move v0, v5

    .line 5888
    goto :goto_1

    .line 5891
    :cond_2
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .line 5894
    .local v2, "tmpVisibility":I
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v6, :cond_3

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v6, v7, :cond_3

    .line 5895
    and-int/lit8 v2, v2, -0x8

    .line 5897
    :cond_3
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v4, v6, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .line 5898
    .local v3, "visibility":I
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v6

    .line 5899
    .local v0, "diff":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 5900
    .local v1, "needsMenu":Z
    if-nez v0, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v6, v1, :cond_4

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move v0, v5

    .line 5902
    goto :goto_1

    .line 5904
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5905
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 5906
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 5907
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 5056
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 5057
    if-eqz p1, :cond_0

    .line 5058
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 5072
    :goto_0
    return-void

    .line 5066
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 5071
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    .line 5069
    :cond_1
    const-string v0, "WindowManager"

    const-string v1, "No keyguard interface!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 5076
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    .line 5078
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5097
    :goto_0
    return-void

    .line 5088
    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "No lock screen! waitForWindowDrawn false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5095
    :cond_1
    :goto_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No lock screen! windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_0

    .line 5090
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 13
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I

    .prologue
    .line 2007
    if-nez p2, :cond_1

    .line 2008
    const/4 v10, 0x0

    .line 2115
    :cond_0
    :goto_0
    return-object v10

    .line 2011
    :cond_1
    const/4 v9, 0x0

    .line 2012
    .local v9, "wm":Landroid/view/WindowManager;
    const/4 v7, 0x0

    .line 2015
    .local v7, "view":Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2019
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    if-eqz p6, :cond_3

    .line 2021
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2022
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2028
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 2029
    .local v8, "win":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2030
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_4

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 2034
    :cond_4
    const/4 v10, 0x0

    .line 2109
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_0

    .line 2110
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 2037
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2038
    .local v5, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2040
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 2046
    or-int/lit8 v10, p9, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x20000

    or-int/2addr v10, v11

    or-int/lit8 v11, p9, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x20000

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 2056
    move/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2057
    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2059
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 2062
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2063
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2064
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2065
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2067
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2069
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2071
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_6

    .line 2072
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2075
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2077
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/WindowManager;

    move-object v9, v0

    .line 2078
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 2080
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_7

    .line 2087
    const/4 v10, 0x0

    .line 2109
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_0

    .line 2110
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2095
    :cond_7
    :try_start_4
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2099
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    if-eqz v10, :cond_8

    move-object v10, v7

    .line 2109
    :goto_2
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_0

    .line 2110
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2099
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 2100
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "win":Landroid/view/Window;
    :catch_0
    move-exception v3

    .line 2102
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_5
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2109
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_9

    .line 2110
    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2115
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_9
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2103
    :catch_1
    move-exception v3

    .line 2107
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2109
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_9

    .line 2110
    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_3

    .line 2109
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_a

    .line 2110
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_a
    throw v10

    .line 2023
    .restart local v2    # "context":Landroid/content/Context;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1800
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1802
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1803
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1805
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_0

    if-ne p2, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1808
    :cond_0
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1809
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_1

    .line 1810
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1814
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_2

    if-ne p3, v1, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1817
    :cond_2
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1819
    :cond_3
    return-void

    .line 1800
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3176
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3179
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1766
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1775
    :goto_0
    return-void

    .line 1770
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1772
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1766
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_2

    .line 4203
    :cond_1
    const/4 v0, 0x0

    .line 4205
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v8, 0x7d4

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3992
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v5, v6, :cond_0

    .line 3994
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 3995
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 3997
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_9

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3999
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_1

    .line 4000
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v8, :cond_a

    .line 4001
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4006
    :cond_1
    :goto_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v8, :cond_2

    .line 4007
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4009
    :cond_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v3, :cond_b

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v5, v6, :cond_b

    move v0, v3

    .line 4011
    .local v0, "appWindow":Z
    :goto_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v5, v6, :cond_4

    .line 4014
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4016
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 4017
    const/4 v0, 0x1

    .line 4021
    :cond_4
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    move v2, v3

    .line 4022
    .local v2, "showWhenLocked":Z
    :goto_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_d

    move v1, v3

    .line 4023
    .local v1, "dismissKeyguard":Z
    :goto_3
    if-eqz v0, :cond_9

    .line 4024
    if-nez v2, :cond_5

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v5

    if-nez v5, :cond_e

    .line 4025
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4029
    :goto_4
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_9

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_9

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v5, v7, :cond_9

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v7, :cond_9

    .line 4033
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4034
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4035
    if-eqz v2, :cond_6

    .line 4038
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 4039
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4041
    :cond_6
    if-eqz v1, :cond_8

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v5, :cond_8

    .line 4043
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, p1, :cond_f

    const/4 v5, 0x2

    :goto_5
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 4045
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4046
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v3

    :cond_7
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4049
    :cond_8
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 4050
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4055
    .end local v0    # "appWindow":Z
    .end local v1    # "dismissKeyguard":Z
    .end local v2    # "showWhenLocked":Z
    :cond_9
    return-void

    .line 4003
    :cond_a
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_0

    :cond_b
    move v0, v4

    .line 4009
    goto/16 :goto_1

    .restart local v0    # "appWindow":Z
    :cond_c
    move v2, v4

    .line 4021
    goto :goto_2

    .restart local v2    # "showWhenLocked":Z
    :cond_d
    move v1, v4

    .line 4022
    goto :goto_3

    .line 4027
    .restart local v1    # "dismissKeyguard":Z
    :cond_e
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    move v5, v3

    .line 4043
    goto :goto_5
.end method

.method public beginLayoutLw(ZIII)V
    .locals 33
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 3228
    if-eqz p1, :cond_a

    .line 3229
    packed-switch p4, :pswitch_data_0

    .line 3249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v22, v0

    .line 3250
    .local v22, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v24, v0

    .line 3251
    .local v24, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v23, v0

    .line 3252
    .local v23, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v21, v0

    .line 3261
    .local v21, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 3262
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    .line 3263
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 3264
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 3265
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 3266
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3267
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 3268
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3269
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3270
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3271
    sub-int v2, p2, v22

    sub-int v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3272
    sub-int v2, p3, v24

    sub-int v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3274
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3277
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 3279
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3281
    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3283
    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3285
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3286
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3289
    sget-object v25, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3290
    .local v25, "pf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3291
    .local v13, "df":Landroid/graphics/Rect;
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3292
    .local v20, "of":Landroid/graphics/Rect;
    sget-object v32, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3293
    .local v32, "vf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3294
    .local v12, "dcf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3296
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3297
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3298
    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 3300
    if-eqz p1, :cond_9

    .line 3303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v28, v0

    .line 3304
    .local v28, "sysui":I
    and-int/lit8 v2, v28, 0x2

    if-nez v2, :cond_b

    const/16 v19, 0x1

    .line 3305
    .local v19, "navVisible":Z
    :goto_1
    const/high16 v2, -0x80000000

    and-int v2, v2, v28

    if-eqz v2, :cond_c

    const/16 v18, 0x1

    .line 3306
    .local v18, "navTranslucent":Z
    :goto_2
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_d

    const/4 v14, 0x1

    .line 3307
    .local v14, "immersive":Z
    :goto_3
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_e

    const/4 v15, 0x1

    .line 3308
    .local v15, "immersiveSticky":Z
    :goto_4
    if-nez v14, :cond_0

    if-eqz v15, :cond_f

    :cond_0
    const/16 v17, 0x1

    .line 3309
    .local v17, "navAllowedHidden":Z
    :goto_5
    if-nez v15, :cond_10

    const/4 v2, 0x1

    :goto_6
    and-int v18, v18, v2

    .line 3310
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v18, v18, v2

    .line 3316
    if-nez v19, :cond_1

    if-eqz v17, :cond_11

    .line 3317
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_2

    .line 3318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 3319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 3331
    :cond_2
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_8
    or-int v19, v19, v2

    .line 3333
    const/16 v31, 0x0

    .line 3334
    .local v31, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v30

    .line 3340
    .local v30, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_3

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_13

    :cond_3
    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 3341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_16

    .line 3343
    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v29, v2, v3

    .line 3345
    .local v29, "top":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v21

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3346
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 3347
    if-eqz v30, :cond_14

    .line 3348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3358
    :goto_a
    if-eqz v19, :cond_4

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3363
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 3392
    .end local v29    # "top":I
    :cond_4
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3393
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object v8, v12

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3402
    const/16 v31, 0x1

    .line 3409
    .end local v30    # "transientNavBarShowing":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    .line 3411
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3412
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3416
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3417
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3418
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3419
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 3424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v25

    move-object v4, v13

    move-object/from16 v5, v32

    move-object/from16 v6, v32

    move-object/from16 v7, v32

    move-object v8, v12

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 3429
    const/high16 v2, 0x4000000

    and-int v2, v2, v28

    if-eqz v2, :cond_19

    const/16 v26, 0x1

    .line 3430
    .local v26, "statusBarTransient":Z
    :goto_c
    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, v2, v28

    if-eqz v2, :cond_1a

    const/16 v27, 0x1

    .line 3431
    .local v27, "statusBarTranslucent":Z
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v27, v27, v2

    .line 3435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v26, :cond_6

    .line 3439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 3441
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 3442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 3444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 3453
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v26, :cond_7

    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3459
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 3461
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3462
    const/16 v31, 0x1

    .line 3465
    .end local v26    # "statusBarTransient":Z
    .end local v27    # "statusBarTranslucent":Z
    :cond_8
    if-eqz v31, :cond_9

    .line 3466
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 3469
    .end local v14    # "immersive":Z
    .end local v15    # "immersiveSticky":Z
    .end local v17    # "navAllowedHidden":Z
    .end local v18    # "navTranslucent":Z
    .end local v19    # "navVisible":Z
    .end local v28    # "sysui":I
    .end local v31    # "updateSysUiVisibility":Z
    :cond_9
    return-void

    .line 3231
    .end local v12    # "dcf":Landroid/graphics/Rect;
    .end local v13    # "df":Landroid/graphics/Rect;
    .end local v20    # "of":Landroid/graphics/Rect;
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    .end local v25    # "pf":Landroid/graphics/Rect;
    .end local v32    # "vf":Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v22, v0

    .line 3232
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v24, v0

    .line 3233
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v23, v0

    .line 3234
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v21, v0

    .line 3235
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3237
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v22, v0

    .line 3238
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v24, v0

    .line 3239
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v23, v0

    .line 3240
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v21, v0

    .line 3241
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3243
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v22, v0

    .line 3244
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v24, v0

    .line 3245
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v23, v0

    .line 3246
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v21, v0

    .line 3247
    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3256
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :cond_a
    const/16 v22, 0x0

    .line 3257
    .restart local v22    # "overscanLeft":I
    const/16 v24, 0x0

    .line 3258
    .restart local v24    # "overscanTop":I
    const/16 v23, 0x0

    .line 3259
    .restart local v23    # "overscanRight":I
    const/16 v21, 0x0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3304
    .restart local v12    # "dcf":Landroid/graphics/Rect;
    .restart local v13    # "df":Landroid/graphics/Rect;
    .restart local v20    # "of":Landroid/graphics/Rect;
    .restart local v25    # "pf":Landroid/graphics/Rect;
    .restart local v28    # "sysui":I
    .restart local v32    # "vf":Landroid/graphics/Rect;
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 3305
    .restart local v19    # "navVisible":Z
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 3306
    .restart local v18    # "navTranslucent":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 3307
    .restart local v14    # "immersive":Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 3308
    .restart local v15    # "immersiveSticky":Z
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 3309
    .restart local v17    # "navAllowedHidden":Z
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 3321
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_2

    .line 3322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_7

    .line 3331
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3340
    .restart local v30    # "transientNavBarShowing":Z
    .restart local v31    # "updateSysUiVisibility":Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 3349
    .restart local v29    # "top":I
    :cond_14
    if-eqz v19, :cond_15

    .line 3350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3351
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 3352
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3353
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_a

    .line 3356
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_a

    .line 3367
    .end local v29    # "top":I
    :cond_16
    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v16, v2, v3

    .line 3369
    .local v16, "left":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v23

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3370
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 3371
    if-eqz v30, :cond_17

    .line 3372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3382
    :goto_e
    if-eqz v19, :cond_4

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3387
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_b

    .line 3373
    :cond_17
    if-eqz v19, :cond_18

    .line 3374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 3375
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 3376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3377
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_e

    .line 3380
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_e

    .line 3429
    .end local v16    # "left":I
    .end local v30    # "transientNavBarShowing":Z
    :cond_19
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 3430
    .restart local v26    # "statusBarTransient":Z
    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_d

    .line 3229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 2
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 3972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3973
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3974
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3975
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 3976
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 3977
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 3979
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3980
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3981
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 3982
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 3983
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 3984
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1985
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 1995
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1993
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1985
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 6063
    sparse-switch p1, :sswitch_data_0

    .line 6071
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6068
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6063
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1673
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1675
    .local v1, "type":I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 1677
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_0

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return v2

    .line 1681
    :cond_1
    const/4 v0, 0x0

    .line 1682
    .local v0, "permission":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1703
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1705
    :goto_1
    :sswitch_0
    if-eqz v0, :cond_0

    .line 1706
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1708
    const/4 v2, -0x8

    goto :goto_0

    .line 1699
    :sswitch_1
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1700
    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_1

    .line 1682
    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_1
        0x7d7 -> :sswitch_1
        0x7da -> :sswitch_1
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1719
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 1726
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return v0

    :cond_1
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1719
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d4 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7e9 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ec -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "onWallpaper"    # Z

    .prologue
    .line 2323
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x10a0031

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x10a002e

    goto :goto_0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 5678
    const/4 v2, 0x0

    .line 5683
    .local v2, "intent":Landroid/content/Intent;
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 5685
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v3, v2

    .line 5693
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_2

    move-object v2, v3

    .line 5713
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-object v4

    .line 5687
    :cond_0
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :cond_1
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 5697
    :cond_2
    const/4 v0, 0x0

    .line 5698
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x10080

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 5702
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_3

    .line 5703
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5705
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5708
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 5709
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    .line 5710
    goto :goto_1

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    move-object v2, v3

    .line 5713
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 5162
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5163
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5175
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4920
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4922
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4928
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4929
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4930
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 4894
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 4899
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4900
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4901
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4904
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4906
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4908
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4910
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4912
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4913
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4917
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 4915
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4933
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4934
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4935
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 4937
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4943
    .end local v0    # "audioService":Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 4938
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    :catch_0
    move-exception v1

    .line 4939
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2907
    const/16 v18, 0x0

    .line 2908
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 2909
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 2910
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 2911
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 2912
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 2917
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_3

    .line 2918
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 2923
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 2929
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 2930
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 2937
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2938
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 2939
    const/16 v18, 0x0

    .line 2942
    :cond_0
    if-eqz v19, :cond_4

    .line 2943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2958
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_1
    :goto_2
    return-object v18

    .line 2912
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 2920
    .restart local v19    # "initialDown":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 2944
    .restart local v14    # "flags":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2945
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 2946
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1980
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6090
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6091
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6092
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6093
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6094
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6095
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6096
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    .line 6098
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6099
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6100
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6101
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6102
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6103
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6105
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 6106
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6107
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6109
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6110
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6111
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6112
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6114
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6115
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6118
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6119
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6121
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6122
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6123
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6124
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6125
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6126
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6127
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6129
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6130
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6132
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6133
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6134
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6135
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    .line 6137
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6138
    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6139
    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6140
    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6142
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6143
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6144
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6145
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6146
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6147
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6148
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6149
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6150
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6152
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6153
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6154
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6156
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6157
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6158
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6160
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6161
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6162
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6164
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6165
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6166
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6168
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6169
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6170
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6172
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6173
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6174
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6176
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6177
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6178
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6180
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6182
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6183
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6184
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    .line 6185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6186
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6188
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    .line 6189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6190
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6192
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    .line 6193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6194
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6196
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 6197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6198
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6200
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 6201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6204
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    .line 6205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6206
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6208
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_b

    .line 6209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6210
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6212
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    .line 6213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6216
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_d

    .line 6217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6218
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6220
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_e

    .line 6221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6222
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6223
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6225
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6226
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6227
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6228
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6229
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6231
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6232
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6234
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6235
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6237
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6238
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6239
    const-string v0, " mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6240
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6241
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6242
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6243
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6245
    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6247
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6248
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6249
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5126
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5127
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 5129
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 5633
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 5634
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 5635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 5636
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 5133
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5134
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5136
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 3966
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4060
    const/4 v0, 0x0

    .line 4061
    .local v0, "changes":I
    const/4 v2, 0x0

    .line 4063
    .local v2, "topIsFullscreen":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4071
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v6, :cond_0

    .line 4072
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 4075
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    .line 4079
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v6, :cond_b

    .line 4081
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4082
    or-int/lit8 v0, v0, 0x1

    .line 4085
    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v6

    if-eqz v6, :cond_a

    move v2, v4

    .line 4087
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4088
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    .line 4124
    :cond_3
    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v6, v2, :cond_5

    .line 4125
    if-nez v2, :cond_4

    .line 4127
    or-int/lit8 v0, v0, 0x1

    .line 4129
    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 4134
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_7

    .line 4137
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v6

    if-nez v6, :cond_10

    .line 4138
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4139
    or-int/lit8 v0, v0, 0x7

    .line 4143
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4144
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4188
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v3

    const v4, -0x3ffffffa    # -2.0000014f

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 4191
    or-int/lit8 v0, v0, 0x1

    .line 4195
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4196
    return v0

    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move-object v1, v3

    .line 4063
    goto/16 :goto_0

    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move v2, v5

    .line 4085
    goto :goto_1

    .line 4091
    :cond_b
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_3

    .line 4098
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_d

    :cond_c
    move v2, v4

    .line 4104
    :goto_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4105
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4106
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    move v2, v5

    .line 4098
    goto :goto_4

    .line 4108
    :cond_e
    if-eqz v2, :cond_f

    .line 4110
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v5}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4111
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4117
    :cond_f
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4118
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 4151
    :cond_10
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v6, :cond_12

    .line 4152
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4153
    or-int/lit8 v0, v0, 0x7

    .line 4157
    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v3, :cond_7

    .line 4158
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto :goto_3

    .line 4160
    :cond_12
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v6, :cond_14

    .line 4162
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v3, v4, :cond_7

    .line 4164
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4165
    or-int/lit8 v0, v0, 0x7

    .line 4169
    :cond_13
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    .line 4170
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 4178
    :cond_14
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4179
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4180
    or-int/lit8 v0, v0, 0x7

    .line 4184
    :cond_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_3
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4209
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3ffffffa    # -2.0000014f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4213
    const/4 v0, 0x1

    .line 4215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAboveUniverseLayer()I
    .locals 1

    .prologue
    .line 1941
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 1975
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 1967
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "contentInset"    # Landroid/graphics/Rect;

    .prologue
    const v6, 0x10100

    .line 3185
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3186
    .local v2, "fl":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 3188
    .local v3, "systemUiVisibility":I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_6

    .line 3191
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_0

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_0

    .line 3193
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3194
    .local v1, "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 3199
    .local v0, "availBottom":I
    :goto_0
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_2

    .line 3200
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_1

    .line 3201
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3221
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :goto_1
    return-void

    .line 3196
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 3197
    .restart local v1    # "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0    # "availBottom":I
    goto :goto_0

    .line 3205
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3208
    :cond_2
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_3

    const/high16 v4, 0x2000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_4

    .line 3209
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 3210
    :cond_4
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_5

    .line 3212
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3215
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3220
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3481
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3482
    return-void
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 1936
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 1956
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 1963
    .end local p2    # "fullHeight":I
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 1945
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 1952
    .end local p1    # "fullWidth":I
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 735
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 3476
    :goto_0
    return v0

    .line 3475
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_0

    .line 3476
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserRotationMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5383
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method goHome()Z
    .locals 19

    .prologue
    .line 5748
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5750
    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v18

    .line 5773
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    .line 5774
    const/4 v1, 0x0

    .line 5780
    .end local v18    # "result":I
    :goto_0
    return v1

    .line 5752
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 5753
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 5754
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 5755
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 5756
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 5762
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_0

    .line 5763
    const/4 v1, 0x0

    goto :goto_0

    .line 5776
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v1

    .line 5780
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 4304
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4305
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 4334
    :goto_0
    return-void

    .line 4314
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4315
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 4316
    if-ne p2, v5, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4332
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4316
    goto :goto_1

    .line 4322
    :cond_2
    if-ne p2, v5, :cond_3

    :goto_3
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4329
    :catch_0
    move-exception v1

    .line 4330
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjust*StreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4332
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    move v2, v3

    .line 4322
    goto :goto_3

    .line 4332
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 6030
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWantsNavigationBar:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 5548
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5556
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 5157
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1134
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1135
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1136
    const-string v8, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 1137
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1138
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1140
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1142
    :goto_0
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 1143
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1144
    new-instance v8, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1145
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 1148
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1149
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1152
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1153
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.CAR_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1156
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1157
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1161
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1162
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1164
    const-string v8, "1"

    const-string v9, "ro.debuggable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1165
    const v8, 0x10e0013

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1167
    const v8, 0x10e0015

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1169
    const v8, 0x10e0014

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1171
    const v8, 0x10e0016

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1173
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1175
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1177
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1179
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1181
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1183
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackKillTimeout:I

    .line 1185
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111002d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1187
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceHardwareKeys:I

    .line 1190
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateKeyAssignments()V

    .line 1193
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1194
    .local v4, "filter":Landroid/content/IntentFilter;
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1195
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1196
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1197
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1198
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1199
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 1200
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 1202
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1207
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1208
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1209
    const-string v8, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1213
    new-instance v4, Landroid/content/IntentFilter;

    .end local v4    # "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1214
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1217
    new-instance v8, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    .line 1242
    new-instance v8, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .line 1243
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1245
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1246
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001b

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1248
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001c

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1250
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001d

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1252
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001e

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1254
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001f

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1257
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1259
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordEnabled:Z

    .line 1262
    new-instance v8, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    .line 1265
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1268
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1269
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1274
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, "deviceKeyHandlerLib":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1280
    .local v1, "deviceKeyHandlerClass":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1281
    new-instance v7, Ldalvik/system/DexClassLoader;

    new-instance v8, Landroid/content/ContextWrapper;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1286
    .local v7, "loader":Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v7, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1287
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1288
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/DeviceKeyHandler;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1297
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "loader":Ldalvik/system/DexClassLoader;
    :cond_1
    :goto_2
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

    invoke-direct {v8, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerMenuReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

    .line 1298
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerMenuReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->registerSelf()V
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager$PowerMenuReceiver;)V

    .line 1299
    return-void

    .line 1271
    .end local v1    # "deviceKeyHandlerClass":Ljava/lang/String;
    .end local v2    # "deviceKeyHandlerLib":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_1

    .line 1291
    .restart local v1    # "deviceKeyHandlerClass":Ljava/lang/String;
    .restart local v2    # "deviceKeyHandlerLib":Ljava/lang/String;
    .restart local v7    # "loader":Ldalvik/system/DexClassLoader;
    :catch_0
    move-exception v3

    .line 1292
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not instantiate device key handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1141
    .end local v1    # "deviceKeyHandlerClass":Ljava/lang/String;
    .end local v2    # "deviceKeyHandlerLib":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "loader":Ldalvik/system/DexClassLoader;
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method initializeHdmiState()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4252
    const/4 v4, 0x0

    .line 4254
    .local v4, "plugged":Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4255
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4257
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 4258
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4260
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4261
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_1
    new-array v0, v9, [C

    .line 4262
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 4263
    .local v3, "n":I
    if-le v3, v7, :cond_0

    .line 4264
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-eqz v9, :cond_2

    move v4, v7

    .line 4271
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4273
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4281
    .end local v0    # "buf":[C
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-nez v4, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4282
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_5

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 4283
    return-void

    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_2
    move v4, v8

    .line 4264
    goto :goto_0

    .line 4266
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 4267
    .local v1, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4271
    if-eqz v5, :cond_1

    .line 4273
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4274
    :catch_1
    move-exception v9

    goto :goto_1

    .line 4268
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4269
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4271
    if-eqz v5, :cond_1

    .line 4273
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 4274
    :catch_3
    move-exception v9

    goto :goto_1

    .line 4271
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_3

    .line 4273
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4275
    :cond_3
    :goto_7
    throw v7

    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_4
    move v9, v8

    .line 4281
    goto :goto_2

    :cond_5
    move v7, v8

    .line 4282
    goto :goto_3

    .line 4274
    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 4271
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 4268
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 4266
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 40
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v19

    .line 2371
    .local v19, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 2372
    .local v18, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    .line 2373
    .local v26, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 2374
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    .line 2375
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v36

    if-nez v36, :cond_0

    const/4 v11, 0x1

    .line 2376
    .local v11, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    .line 2377
    .local v7, "canceled":Z
    and-int/lit16 v0, v14, 0x80

    move/from16 v36, v0

    if-eqz v36, :cond_1

    const/16 v20, 0x1

    .line 2378
    .local v20, "longPress":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v35, 0x1

    .line 2389
    .local v35, "virtualKey":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5

    and-int/lit16 v0, v14, 0x400

    move/from16 v36, v0

    if-nez v36, :cond_5

    .line 2390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v36, v0

    if-eqz v36, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v36, v0

    if-nez v36, :cond_3

    .line 2391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 2392
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x96

    add-long v31, v36, v38

    .line 2393
    .local v31, "timeoutTime":J
    cmp-long v36, v24, v31

    if-gez v36, :cond_3

    .line 2394
    sub-long v36, v31, v24

    .line 2890
    .end local v24    # "now":J
    .end local v31    # "timeoutTime":J
    :goto_3
    return-wide v36

    .line 2375
    .end local v7    # "canceled":Z
    .end local v11    # "down":Z
    .end local v20    # "longPress":Z
    .end local v35    # "virtualKey":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 2377
    .restart local v7    # "canceled":Z
    .restart local v11    # "down":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 2378
    .restart local v20    # "longPress":Z
    :cond_2
    const/16 v35, 0x0

    goto :goto_2

    .line 2397
    .restart local v35    # "virtualKey":Z
    :cond_3
    const/16 v36, 0x19

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 2399
    if-nez v11, :cond_4

    .line 2400
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 2402
    :cond_4
    const-wide/16 v36, -0x1

    goto :goto_3

    .line 2409
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordChordEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_8

    and-int/lit16 v0, v14, 0x400

    move/from16 v36, v0

    if-nez v36, :cond_8

    .line 2410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v36, v0

    if-eqz v36, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v36, v0

    if-nez v36, :cond_6

    .line 2411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 2412
    .restart local v24    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x96

    add-long v31, v36, v38

    .line 2413
    .restart local v31    # "timeoutTime":J
    cmp-long v36, v24, v31

    if-gez v36, :cond_6

    .line 2414
    sub-long v36, v31, v24

    goto :goto_3

    .line 2417
    .end local v24    # "now":J
    .end local v31    # "timeoutTime":J
    :cond_6
    const/16 v36, 0x18

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenrecordChord:Z

    move/from16 v36, v0

    if-eqz v36, :cond_8

    .line 2419
    if-nez v11, :cond_7

    .line 2420
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenrecordChord:Z

    .line 2422
    :cond_7
    const-wide/16 v36, -0x1

    goto :goto_3

    .line 2430
    :cond_8
    const/16 v36, 0x3

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    .line 2434
    if-nez v11, :cond_e

    .line 2436
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    move/from16 v36, v0

    if-eqz v36, :cond_9

    .line 2438
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 2439
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2441
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_a

    .line 2442
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2445
    :cond_a
    if-eqz v7, :cond_b

    .line 2446
    const-string v36, "WindowManager"

    const-string v37, "Ignoring HOME; event canceled."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2454
    :cond_b
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v30

    .line 2455
    .local v30, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v30, :cond_c

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 2456
    const-string v36, "WindowManager"

    const-string v37, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2457
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2459
    .end local v30    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v13

    .line 2460
    .local v13, "ex":Landroid/os/RemoteException;
    const-string v36, "WindowManager"

    const-string v37, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2464
    .end local v13    # "ex":Landroid/os/RemoteException;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_d

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2466
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v37, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2469
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2473
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 2474
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2479
    :cond_e
    if-eqz p1, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2480
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_4
    if-eqz v4, :cond_13

    .line 2481
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v33, v0

    .line 2482
    .local v33, "type":I
    const/16 v36, 0x7d4

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    const/16 v36, 0x7ed

    move/from16 v0, v33

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    const/16 v36, 0x7d9

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    .line 2486
    :cond_f
    const-wide/16 v36, 0x0

    goto/16 :goto_3

    .line 2479
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v33    # "type":I
    :cond_10
    const/4 v4, 0x0

    goto :goto_4

    .line 2488
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v33    # "type":I
    :cond_11
    sget-object v36, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v34, v0

    .line 2489
    .local v34, "typeCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    move/from16 v0, v34

    if-ge v15, v0, :cond_13

    .line 2490
    sget-object v36, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v36, v36, v15

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    .line 2492
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2489
    :cond_12
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2497
    .end local v15    # "i":I
    .end local v33    # "type":I
    .end local v34    # "typeCount":I
    :cond_13
    if-nez v11, :cond_14

    .line 2498
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2502
    :cond_14
    if-nez v26, :cond_18

    .line 2503
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2504
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    move/from16 v36, v0

    if-eqz v36, :cond_16

    .line 2505
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2506
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2510
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 2533
    :cond_15
    :goto_6
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2511
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    move/from16 v36, v0

    if-nez v36, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 2514
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_6

    .line 2516
    :cond_18
    if-eqz v20, :cond_15

    .line 2517
    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    move/from16 v36, v0

    if-nez v36, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_15

    .line 2519
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    .line 2521
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2525
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1a

    .line 2526
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2528
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2530
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    goto/16 :goto_6

    .line 2534
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1b
    const/16 v36, 0x52

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_2a

    .line 2536
    const/4 v9, 0x1

    .line 2538
    .local v9, "chordBug":I
    if-nez v35, :cond_1c

    if-eqz v19, :cond_1d

    .line 2540
    :cond_1c
    const-wide/16 v36, 0x0

    goto/16 :goto_3

    .line 2543
    :cond_1d
    if-eqz v11, :cond_23

    .line 2544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    move/from16 v36, v0

    if-nez v36, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1f

    .line 2546
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 2548
    :cond_1f
    if-nez v26, :cond_20

    .line 2549
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuPressed:Z

    .line 2550
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v36, v0

    if-eqz v36, :cond_23

    and-int/lit8 v36, v22, 0x1

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_23

    .line 2551
    new-instance v16, Landroid/content/Intent;

    const-string v36, "android.intent.action.BUG_REPORT"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2552
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2553
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2570
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_20
    if-eqz v20, :cond_23

    .line 2571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_23

    .line 2572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_21

    .line 2573
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2577
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_22

    .line 2578
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2580
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2582
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuPressed:Z

    .line 2583
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2587
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_26

    .line 2588
    if-nez v11, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuPressed:Z

    move/from16 v36, v0

    if-eqz v36, :cond_25

    .line 2589
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuPressed:Z

    .line 2590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_24

    .line 2591
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2593
    :cond_24
    if-nez v7, :cond_25

    .line 2594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnMenuBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2597
    :cond_25
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2599
    :cond_26
    if-nez v11, :cond_27

    .line 2600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuPressed:Z

    move/from16 v36, v0

    if-eqz v36, :cond_29

    .line 2601
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMenuPressed:Z

    .line 2602
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2773
    .end local v9    # "chordBug":I
    :cond_27
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move/from16 v36, v0

    if-eqz v36, :cond_4f

    .line 2774
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v17

    .line 2775
    .local v17, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v17 .. v18}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v36

    if-eqz v36, :cond_4f

    .line 2776
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2777
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2778
    if-eqz v11, :cond_28

    if-nez v26, :cond_28

    if-nez v19, :cond_28

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v28

    .line 2780
    .local v28, "shortcutIntent":Landroid/content/Intent;
    if-eqz v28, :cond_4e

    .line 2781
    const/high16 v36, 0x10000000

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2783
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    sget-object v37, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2794
    .end local v28    # "shortcutIntent":Landroid/content/Intent;
    :cond_28
    :goto_8
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2603
    .end local v17    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v9    # "chordBug":I
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnMenuBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_27

    .line 2604
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2608
    .end local v9    # "chordBug":I
    :cond_2a
    const/16 v36, 0x54

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_2c

    .line 2609
    if-eqz v11, :cond_2b

    .line 2610
    if-nez v26, :cond_27

    .line 2611
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2612
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto/16 :goto_7

    .line 2615
    :cond_2b
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v36, v0

    if-eqz v36, :cond_27

    .line 2617
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2618
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2621
    :cond_2c
    const/16 v36, 0x54

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 2622
    if-eqz v11, :cond_2e

    .line 2623
    if-nez v26, :cond_2d

    .line 2624
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2625
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2634
    :cond_2d
    const-wide/16 v36, 0x0

    goto/16 :goto_3

    .line 2628
    :cond_2e
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2629
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2d

    .line 2630
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2631
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2635
    :cond_2f
    const/16 v36, 0xbb

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_39

    .line 2636
    if-eqz v11, :cond_36

    .line 2637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    move/from16 v36, v0

    if-nez v36, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_31

    .line 2639
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 2641
    :cond_31
    if-nez v26, :cond_33

    .line 2642
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongPressed:Z

    .line 2669
    :cond_32
    :goto_9
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2643
    :cond_33
    if-eqz v20, :cond_32

    .line 2644
    if-nez v19, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_32

    .line 2645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_34

    .line 2646
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2650
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_35

    .line 2651
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2653
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2654
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_9

    .line 2658
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongPressed:Z

    move/from16 v36, v0

    if-eqz v36, :cond_37

    .line 2659
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_9

    .line 2661
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_38

    .line 2662
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2664
    :cond_38
    if-nez v7, :cond_32

    if-nez v19, :cond_32

    .line 2665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAppSwitchBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    goto/16 :goto_9

    .line 2670
    :cond_39
    const/16 v36, 0xdb

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_43

    .line 2671
    if-eqz v11, :cond_40

    .line 2672
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    move/from16 v36, v0

    if-nez v36, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3b

    .line 2674
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 2676
    :cond_3b
    if-nez v26, :cond_3d

    .line 2677
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2704
    :cond_3c
    :goto_a
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2678
    :cond_3d
    if-eqz v20, :cond_3c

    .line 2679
    if-nez v19, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_3c

    .line 2680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3e

    .line 2681
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2685
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3f

    .line 2686
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2688
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnAssistBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2689
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_a

    .line 2693
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    move/from16 v36, v0

    if-eqz v36, :cond_41

    .line 2694
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_a

    .line 2696
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_42

    .line 2697
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2699
    :cond_42
    if-nez v7, :cond_3c

    if-nez v19, :cond_3c

    .line 2700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPressOnAssistBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    goto/16 :goto_a

    .line 2705
    :cond_43
    const/16 v36, 0x4

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_47

    .line 2706
    if-eqz v11, :cond_46

    .line 2707
    if-eqz v20, :cond_27

    .line 2708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v36, v0

    if-eqz v36, :cond_27

    .line 2709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_44

    .line 2710
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2714
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_45

    .line 2715
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2717
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnBackBehavior:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performKeyAction(I)V

    .line 2718
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackLongPressed:Z

    goto/16 :goto_7

    .line 2721
    :cond_46
    if-nez v11, :cond_27

    .line 2722
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBackLongPressed:Z

    goto/16 :goto_7

    .line 2724
    :cond_47
    const/16 v36, 0x78

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_49

    .line 2725
    if-eqz v11, :cond_48

    if-nez v26, :cond_48

    .line 2726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2728
    :cond_48
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2729
    :cond_49
    const/16 v36, 0xdd

    move/from16 v0, v18

    move/from16 v1, v36

    if-eq v0, v1, :cond_4a

    const/16 v36, 0xdc

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_27

    .line 2731
    :cond_4a
    if-eqz v11, :cond_4c

    .line 2732
    const/16 v36, 0xdd

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_4d

    const/4 v10, 0x1

    .line 2735
    .local v10, "direction":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "screen_brightness_mode"

    const/16 v38, 0x0

    const/16 v39, -0x3

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2740
    .local v5, "auto":I
    if-eqz v5, :cond_4b

    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "screen_brightness_mode"

    const/16 v38, 0x0

    const/16 v39, -0x3

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2747
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v23

    .line 2748
    .local v23, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v21

    .line 2749
    .local v21, "max":I
    sub-int v36, v21, v23

    add-int/lit8 v36, v36, 0xa

    add-int/lit8 v36, v36, -0x1

    div-int/lit8 v36, v36, 0xa

    mul-int v29, v36, v10

    .line 2750
    .local v29, "step":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "screen_brightness"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v38

    const/16 v39, -0x3

    invoke-static/range {v36 .. v39}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2754
    .local v6, "brightness":I
    add-int v6, v6, v29

    .line 2756
    move/from16 v0, v21

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2757
    move/from16 v0, v23

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "screen_brightness"

    const/16 v38, -0x3

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2762
    new-instance v16, Landroid/content/Intent;

    const-string v36, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2763
    .restart local v16    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    sget-object v37, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2765
    .end local v5    # "auto":I
    .end local v6    # "brightness":I
    .end local v10    # "direction":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v21    # "max":I
    .end local v23    # "min":I
    .end local v29    # "step":I
    :cond_4c
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2732
    :cond_4d
    const/4 v10, -0x1

    goto/16 :goto_b

    .line 2784
    .restart local v17    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v28    # "shortcutIntent":Landroid/content/Intent;
    :catch_1
    move-exception v13

    .line 2785
    .local v13, "ex":Landroid/content/ActivityNotFoundException;
    const-string v36, "WindowManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v18 .. v18}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 2790
    .end local v13    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4e
    const-string v36, "WindowManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v18 .. v18}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2799
    .end local v17    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v28    # "shortcutIntent":Landroid/content/Intent;
    :cond_4f
    if-eqz v11, :cond_50

    if-nez v26, :cond_50

    if-nez v19, :cond_50

    const/high16 v36, 0x10000

    and-int v36, v36, v22

    if-eqz v36, :cond_50

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v17

    .line 2802
    .restart local v17    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v17 .. v18}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v36

    if-eqz v36, :cond_50

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v36, v0

    const v37, -0x70001

    and-int v37, v37, v22

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v28

    .line 2806
    .restart local v28    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v28, :cond_50

    .line 2807
    const/high16 v36, 0x10000000

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2809
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    sget-object v37, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2815
    :goto_c
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2810
    :catch_2
    move-exception v13

    .line 2811
    .restart local v13    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v36, "WindowManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v18 .. v18}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 2821
    .end local v13    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v17    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v28    # "shortcutIntent":Landroid/content/Intent;
    :cond_50
    if-eqz v11, :cond_51

    if-nez v26, :cond_51

    if-nez v19, :cond_51

    .line 2822
    sget-object v36, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2823
    .local v8, "category":Ljava/lang/String;
    if-eqz v8, :cond_51

    .line 2824
    const-string v36, "android.intent.action.MAIN"

    move-object/from16 v0, v36

    invoke-static {v0, v8}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    .line 2825
    .restart local v16    # "intent":Landroid/content/Intent;
    const/high16 v36, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2827
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    sget-object v37, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2833
    :goto_d
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2828
    :catch_3
    move-exception v13

    .line 2829
    .restart local v13    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v36, "WindowManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", category="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 2838
    .end local v8    # "category":Ljava/lang/String;
    .end local v13    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_51
    if-eqz v11, :cond_53

    if-nez v26, :cond_53

    const/16 v36, 0x3d

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_53

    .line 2839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v36, v0

    if-nez v36, :cond_54

    if-nez v19, :cond_54

    .line 2840
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v36

    move/from16 v0, v36

    and-int/lit16 v0, v0, -0xc2

    move/from16 v27, v0

    .line 2841
    .local v27, "shiftlessModifiers":I
    const/16 v36, 0x2

    move/from16 v0, v27

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v36

    if-nez v36, :cond_52

    const/high16 v36, 0x10000

    move/from16 v0, v27

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v36

    if-eqz v36, :cond_54

    .line 2844
    :cond_52
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2845
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2846
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2849
    .end local v27    # "shiftlessModifiers":I
    :cond_53
    if-nez v11, :cond_54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v36, v0

    if-eqz v36, :cond_54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v36, v0

    and-int v36, v36, v22

    if-nez v36, :cond_54

    .line 2851
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2852
    if-eqz v19, :cond_56

    const/16 v36, 0x2

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2857
    :cond_54
    if-eqz v11, :cond_58

    if-nez v26, :cond_58

    const/16 v36, 0xcc

    move/from16 v0, v18

    move/from16 v1, v36

    if-eq v0, v1, :cond_55

    const/16 v36, 0x3e

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_58

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x7000

    move/from16 v36, v0

    if-eqz v36, :cond_58

    .line 2861
    :cond_55
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xc1

    move/from16 v36, v0

    if-eqz v36, :cond_57

    const/4 v10, -0x1

    .line 2862
    .restart local v10    # "direction":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v36, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v37

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-interface {v0, v1, v10}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 2863
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2852
    .end local v10    # "direction":I
    :cond_56
    const/16 v36, 0x3

    goto :goto_e

    .line 2861
    :cond_57
    const/4 v10, 0x1

    goto :goto_f

    .line 2865
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5a

    if-nez v11, :cond_5a

    const/16 v36, 0xcc

    move/from16 v0, v18

    move/from16 v1, v36

    if-eq v0, v1, :cond_59

    const/16 v36, 0x3e

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_5a

    .line 2868
    :cond_59
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 2869
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2872
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v36

    if-eqz v36, :cond_5b

    .line 2873
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2878
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    move-object/from16 v36, v0

    if-eqz v36, :cond_5c

    .line 2881
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v36

    if-eqz v36, :cond_5c

    .line 2882
    const-wide/16 v36, -0x1

    goto/16 :goto_3

    .line 2884
    :catch_4
    move-exception v12

    .line 2885
    .local v12, "e":Ljava/lang/Exception;
    const-string v36, "WindowManager"

    const-string v37, "Could not dispatch event to device key handler"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2890
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5c
    const-wide/16 v36, 0x0

    goto/16 :goto_3
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 26
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 4471
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v2, :cond_1

    .line 4473
    const/16 v22, 0x0

    .line 4838
    :cond_0
    :goto_0
    return v22

    .line 4476
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v12, 0x1

    .line 4477
    .local v12, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 4478
    .local v11, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v19

    .line 4479
    .local v19, "keyCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 4482
    .local v10, "audioManager":Landroid/media/AudioManager;
    const/high16 v2, 0x1000000

    and-int v2, v2, p2

    if-eqz v2, :cond_12

    const/16 v16, 0x1

    .line 4488
    .local v16, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v2, :cond_13

    const/16 v20, 0x0

    .line 4493
    .local v20, "keyguardActive":Z
    :goto_3
    const/16 v2, 0x1a

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    .line 4494
    or-int/lit8 p2, p2, 0x1

    .line 4496
    :cond_2
    and-int/lit8 v2, p2, 0x3

    if-nez v2, :cond_4

    const/16 v2, 0x18

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-nez v2, :cond_4

    :cond_3
    const/16 v2, 0x19

    move/from16 v0, v19

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-eqz v2, :cond_15

    :cond_4
    const/16 v18, 0x1

    .line 4502
    .local v18, "isWakeKey":Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOffReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_16

    const/16 v17, 0x1

    .line 4503
    .local v17, "isOffByProx":Z
    :goto_5
    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-eqz v2, :cond_5

    if-eqz v17, :cond_7

    :cond_5
    const/16 v2, 0x18

    move/from16 v0, v19

    if-eq v0, v2, :cond_6

    const/16 v2, 0x19

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 4506
    :cond_6
    const/16 v18, 0x0

    .line 4510
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolBtnMusicControls:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeWakeScreen:Z

    if-eqz v2, :cond_9

    if-eqz v18, :cond_9

    const/16 v2, 0x18

    move/from16 v0, v19

    if-eq v0, v2, :cond_8

    const/16 v2, 0x19

    move/from16 v0, v19

    if-ne v0, v2, :cond_9

    .line 4515
    :cond_8
    const/16 v18, 0x0

    .line 4519
    :cond_9
    const/16 v2, 0x4f

    move/from16 v0, v19

    if-eq v0, v2, :cond_b

    const/16 v2, 0x55

    move/from16 v0, v19

    if-lt v0, v2, :cond_a

    const/16 v2, 0x5a

    move/from16 v0, v19

    if-le v0, v2, :cond_b

    :cond_a
    const/16 v2, 0x7e

    move/from16 v0, v19

    if-eq v0, v2, :cond_b

    const/16 v2, 0x7f

    move/from16 v0, v19

    if-ne v0, v2, :cond_c

    :cond_b
    if-eqz v18, :cond_c

    .line 4525
    const/16 v18, 0x0

    .line 4535
    :cond_c
    if-eqz v12, :cond_d

    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_d

    .line 4537
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4549
    :cond_d
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v16, :cond_17

    if-nez v18, :cond_17

    .line 4551
    :cond_f
    const/16 v22, 0x1

    .line 4569
    .local v22, "result":I
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    if-eqz v2, :cond_19

    .line 4577
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_19

    .line 4578
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 4476
    .end local v10    # "audioManager":Landroid/media/AudioManager;
    .end local v11    # "canceled":Z
    .end local v12    # "down":Z
    .end local v16    # "isInjected":Z
    .end local v17    # "isOffByProx":Z
    .end local v18    # "isWakeKey":Z
    .end local v19    # "keyCode":I
    .end local v20    # "keyguardActive":Z
    .end local v22    # "result":I
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 4482
    .restart local v10    # "audioManager":Landroid/media/AudioManager;
    .restart local v11    # "canceled":Z
    .restart local v12    # "down":Z
    .restart local v19    # "keyCode":I
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 4488
    .restart local v16    # "isInjected":Z
    :cond_13
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v20

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v20

    goto/16 :goto_3

    .line 4496
    .restart local v20    # "keyguardActive":Z
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 4502
    .restart local v18    # "isWakeKey":Z
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 4555
    .restart local v17    # "isOffByProx":Z
    :cond_17
    const/16 v22, 0x0

    .line 4557
    .restart local v22    # "result":I
    if-eqz v12, :cond_10

    if-eqz v18, :cond_10

    .line 4558
    if-eqz v20, :cond_18

    .line 4559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_6

    .line 4562
    :cond_18
    or-int/lit8 v22, v22, 0x2

    goto :goto_6

    .line 4580
    :catch_0
    move-exception v13

    .line 4581
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Could not dispatch event to device key handler"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4586
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_19
    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_0

    .line 4817
    :sswitch_0
    if-eqz v12, :cond_0

    .line 4818
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 4819
    .local v23, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v23, :cond_0

    .line 4821
    :try_start_1
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4822
    const-string v2, "WindowManager"

    const-string v3, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 4828
    and-int/lit8 v22, v22, -0x2

    goto/16 :goto_0

    .line 4590
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolBtnMusicControls:Z

    if-eqz v2, :cond_1a

    if-nez v12, :cond_1a

    .line 4591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4594
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsLongPress:Z

    if-nez v2, :cond_1a

    and-int/lit8 v2, v22, 0x1

    if-nez v2, :cond_1a

    .line 4595
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 4598
    :cond_1a
    const/16 v2, 0x19

    move/from16 v0, v19

    if-ne v0, v2, :cond_1d

    .line 4599
    if-eqz v12, :cond_1c

    .line 4600
    if-eqz p3, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1b

    .line 4602
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4603
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 4604
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 4605
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4606
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 4607
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4608
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptVolumeDoubleTapChord()V

    .line 4633
    :cond_1b
    :goto_7
    if-eqz v12, :cond_0

    .line 4634
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 4635
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v23, :cond_20

    .line 4637
    :try_start_2
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4644
    const-string v2, "WindowManager"

    const-string v3, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4653
    and-int/lit8 v22, v22, -0x2

    goto/16 :goto_0

    .line 4611
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 4612
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4613
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    goto :goto_7

    .line 4615
    :cond_1d
    const/16 v2, 0x18

    move/from16 v0, v19

    if-ne v0, v2, :cond_1b

    .line 4616
    if-eqz v12, :cond_1e

    .line 4617
    if-eqz p3, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1b

    .line 4619
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4620
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    .line 4621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenrecordChord:Z

    .line 4622
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4623
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4624
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenrecordChord()V

    .line 4625
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptVolumeDoubleTapChord()V

    goto :goto_7

    .line 4628
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 4629
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4630
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    goto :goto_7

    .line 4656
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1f
    :try_start_3
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_20

    and-int/lit8 v2, v22, 0x1

    if-nez v2, :cond_20

    .line 4660
    invoke-virtual {v10}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4661
    const/4 v2, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 4667
    :catch_1
    move-exception v14

    .line 4668
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4672
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_0

    and-int/lit8 v2, v22, 0x1

    if-nez v2, :cond_0

    .line 4674
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolBtnMusicControls:Z

    if-eqz v2, :cond_23

    .line 4676
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsLongPress:Z

    .line 4680
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_22

    const/16 v8, 0x57

    .line 4682
    .local v8, "newKeyCode":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 4684
    .local v21, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4663
    .end local v8    # "newKeyCode":I
    .end local v21    # "msg":Landroid/os/Message;
    :cond_21
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4680
    :cond_22
    const/16 v8, 0x58

    goto :goto_8

    .line 4689
    :cond_23
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_0

    .line 4698
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :sswitch_2
    and-int/lit8 v22, v22, -0x2

    .line 4699
    if-eqz v12, :cond_27

    .line 4700
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 4701
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v15, 0x0

    .line 4702
    .local v15, "hungUp":Z
    if-eqz v23, :cond_24

    .line 4704
    :try_start_5
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v15

    .line 4709
    :cond_24
    :goto_9
    if-eqz p3, :cond_25

    if-eqz v15, :cond_26

    :cond_25
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_0

    .line 4705
    :catch_2
    move-exception v14

    .line 4706
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 4709
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_26
    const/4 v2, 0x0

    goto :goto_a

    .line 4711
    .end local v15    # "hungUp":Z
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_28

    .line 4714
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4718
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4720
    and-int/lit8 v2, v22, -0x3

    or-int/lit8 v22, v2, 0x4

    goto/16 :goto_0

    .line 4728
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 4732
    and-int/lit8 v22, v22, -0x2

    .line 4733
    if-eqz v12, :cond_2e

    .line 4734
    if-eqz p3, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_29

    .line 4736
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4737
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 4738
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 4739
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenrecordChord()V

    .line 4742
    :cond_29
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 4743
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v15, 0x0

    .line 4744
    .restart local v15    # "hungUp":Z
    if-eqz v23, :cond_2a

    .line 4746
    :try_start_6
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 4749
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4761
    :cond_2a
    :goto_b
    if-eqz p3, :cond_2b

    if-nez v15, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_0

    .line 4750
    :cond_2c
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2a

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz p3, :cond_2a

    .line 4755
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v15

    goto :goto_b

    .line 4757
    :catch_3
    move-exception v14

    .line 4758
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 4761
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_2d
    const/4 v2, 0x0

    goto :goto_c

    .line 4764
    .end local v15    # "hungUp":Z
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_2e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4765
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4766
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenrecordChordAction()V

    .line 4767
    if-nez v11, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    if-eqz v2, :cond_31

    :cond_2f
    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4768
    and-int/lit8 v2, v22, -0x3

    or-int/lit8 v22, v2, 0x4

    .line 4770
    :cond_30
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_0

    .line 4767
    :cond_31
    const/4 v2, 0x0

    goto :goto_d

    .line 4778
    :sswitch_4
    if-eqz v12, :cond_32

    .line 4779
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 4780
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v23, :cond_32

    .line 4782
    :try_start_8
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v2

    if-eqz v2, :cond_0

    .line 4801
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_32
    :goto_e
    :sswitch_5
    and-int/lit8 v2, v22, 0x1

    if-nez v2, :cond_0

    .line 4807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    new-instance v4, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 4810
    .restart local v21    # "msg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4811
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 4787
    .end local v21    # "msg":Landroid/os/Message;
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_4
    move-exception v14

    .line 4788
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 4830
    .end local v14    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v14

    .line 4831
    .restart local v14    # "ex":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4586
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x4f -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_1
        0xde -> :sswitch_5
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 3
    .param p1, "policyFlags"    # I

    .prologue
    .line 4879
    const/4 v1, 0x0

    .line 4881
    .local v1, "result":I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 4883
    .local v0, "isWakeMotion":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4884
    or-int/lit8 v1, v1, 0x2

    .line 4886
    :cond_0
    return v1

    .line 4881
    .end local v0    # "isWakeMotion":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1025
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 5146
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 5151
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 4291
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4292
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 4293
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    const/4 v1, 0x0

    .line 4296
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isLocalOrRemoteMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    .prologue
    .line 5116
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    .prologue
    .line 5121
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 6081
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_0

    .line 6083
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_1

    .line 6085
    :cond_0
    :goto_0
    return v0

    .line 6083
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 5864
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 6

    .prologue
    .line 5868
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5870
    .local v0, "curTime":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5872
    .end local v0    # "curTime":J
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2359
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 2

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3091
    :goto_0
    return-void

    .line 3067
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3070
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    .line 3085
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    :goto_1
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0

    .line 3086
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 22
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 3556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 3945
    :cond_0
    :goto_0
    return-void

    .line 3559
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v17

    .line 3560
    .local v17, "isDefaultDisplay":Z
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_4

    const/16 v18, 0x1

    .line 3562
    .local v18, "needsToOffsetInputMethodTarget":Z
    :goto_1
    if-eqz v18, :cond_2

    .line 3564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3567
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3568
    .local v4, "fl":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v19, v0

    .line 3569
    .local v19, "sim":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v20

    .line 3571
    .local v20, "sysUiFl":I
    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3572
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3573
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3574
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 3575
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3576
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3577
    .local v13, "dcf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 3579
    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    .line 3582
    .local v14, "hasNavBar":Z
    :goto_2
    move/from16 v0, v19

    and-int/lit16 v5, v0, 0xf0

    .line 3584
    .local v5, "adjust":I
    if-nez v17, :cond_7

    .line 3585
    if-eqz p3, :cond_6

    .line 3588
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3921
    :goto_3
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_3

    .line 3922
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3923
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    :cond_3
    move-object/from16 v7, p1

    .line 3936
    invoke-interface/range {v7 .. v13}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3940
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3942
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3943
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_0

    .line 3560
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v13    # "dcf":Landroid/graphics/Rect;
    .end local v14    # "hasNavBar":Z
    .end local v18    # "needsToOffsetInputMethodTarget":Z
    .end local v19    # "sim":I
    .end local v20    # "sysUiFl":I
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 3579
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v18    # "needsToOffsetInputMethodTarget":Z
    .restart local v19    # "sim":I
    .restart local v20    # "sysUiFl":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 3591
    .restart local v5    # "adjust":I
    .restart local v14    # "hasNavBar":Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3592
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3593
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3595
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3598
    :cond_7
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_8

    .line 3599
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3600
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3601
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3603
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3605
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3607
    const/16 v2, 0x50

    move-object/from16 v0, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3608
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_3

    .line 3612
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 3613
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 3614
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 3615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 3616
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    const/4 v15, 0x1

    .line 3618
    .local v15, "inheritTranslucentDecor":Z
    :goto_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_c

    const/16 v16, 0x1

    .line 3621
    .local v16, "isAppWindow":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v21, 0x1

    .line 3623
    .local v21, "topAtRest":Z
    :goto_6
    if-eqz v16, :cond_a

    if-nez v15, :cond_a

    if-nez v21, :cond_a

    .line 3624
    and-int/lit8 v2, v20, 0x4

    if-nez v2, :cond_9

    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_9

    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-nez v2, :cond_9

    .line 3632
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 3634
    :cond_9
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_a

    and-int/lit8 v2, v20, 0x2

    if-nez v2, :cond_a

    .line 3637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 3638
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 3642
    :cond_a
    const v2, 0x10100

    and-int/2addr v2, v4

    const v3, 0x10100

    if-ne v2, v3, :cond_1a

    .line 3650
    if-eqz p3, :cond_e

    .line 3653
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 3616
    .end local v15    # "inheritTranslucentDecor":Z
    .end local v16    # "isAppWindow":Z
    .end local v21    # "topAtRest":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_4

    .line 3618
    .restart local v15    # "inheritTranslucentDecor":Z
    :cond_c
    const/16 v16, 0x0

    goto :goto_5

    .line 3621
    .restart local v16    # "isAppWindow":Z
    :cond_d
    const/16 v21, 0x0

    goto :goto_6

    .line 3655
    .restart local v21    # "topAtRest":Z
    :cond_e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_13

    .line 3664
    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_7
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3666
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3667
    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_8
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3670
    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_9
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3723
    :goto_a
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_18

    .line 3724
    const/16 v2, 0x10

    if-eq v5, v2, :cond_17

    .line 3725
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3726
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3727
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3728
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3745
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3746
    const/16 v2, 0x30

    if-eq v5, v2, :cond_19

    .line 3747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 3748
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 3749
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 3750
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3664
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_7

    .line 3667
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_8

    .line 3670
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_9

    .line 3677
    :cond_13
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_14

    .line 3682
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3684
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3685
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 3687
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_16

    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_16

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_16

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_16

    .line 3696
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3697
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3698
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3699
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3703
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3704
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3705
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 3708
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3710
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3717
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 3718
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 3719
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 3720
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 3730
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3732
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3740
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3743
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_b

    .line 3752
    :cond_19
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 3755
    :cond_1a
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_1b

    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_2c

    .line 3762
    :cond_1b
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1c

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_20

    .line 3764
    :cond_1c
    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_c
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3766
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3767
    if-eqz v14, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    :goto_d
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3770
    if-eqz v14, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    :goto_e
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3853
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v4, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3855
    const/16 v2, 0x30

    if-eq v5, v2, :cond_2b

    .line 3856
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 3857
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 3858
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 3859
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3764
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_c

    .line 3767
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_d

    .line 3770
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_e

    .line 3776
    :cond_20
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_21

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_22

    .line 3779
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3780
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3781
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_f

    .line 3788
    :cond_22
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_24

    :cond_23
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_24

    .line 3792
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3793
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3794
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3798
    :cond_24
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-eq v2, v3, :cond_25

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e9

    if-ne v2, v3, :cond_26

    .line 3801
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3802
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3807
    :cond_26
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_27

    .line 3809
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3810
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3811
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3813
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3815
    :cond_27
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_28

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_28

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_28

    .line 3820
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3821
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3822
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3824
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3826
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_2a

    move/from16 v0, v20

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_29

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2a

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_2a

    .line 3838
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3842
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3845
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3846
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3847
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3849
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 3861
    :cond_2b
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 3863
    :cond_2c
    if-eqz p3, :cond_2d

    .line 3868
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 3874
    :cond_2d
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-ne v2, v3, :cond_2e

    .line 3879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3880
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3883
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3885
    :cond_2e
    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_2f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-eq v2, v3, :cond_2f

    move-object/from16 v0, p2

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_30

    .line 3888
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3889
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3890
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3891
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3893
    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3894
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3895
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3896
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3897
    const/16 v2, 0x10

    if-eq v5, v2, :cond_31

    .line 3898
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3899
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 3900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3901
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 3908
    :goto_10
    const/16 v2, 0x30

    if-eq v5, v2, :cond_32

    .line 3909
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 3910
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 3911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 3912
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3903
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 3904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 3905
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 3906
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    .line 3914
    :cond_32
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5603
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5604
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5605
    if-eqz p1, :cond_0

    .line 5608
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 5610
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5611
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 748
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v0

    .line 756
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_0

    .line 764
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_0

    .line 773
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4221
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_1

    .line 4238
    :cond_0
    :goto_0
    return-void

    .line 4224
    :cond_1
    if-eqz p3, :cond_2

    move v0, v1

    .line 4225
    .local v0, "newLidState":I
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_0

    .line 4229
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 4230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 4231
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 4233
    if-eqz p3, :cond_3

    .line 4234
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .end local v0    # "newLidState":I
    :cond_2
    move v0, v2

    .line 4224
    goto :goto_1

    .line 4235
    .restart local v0    # "newLidState":I
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_0

    .line 4236
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5815
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5859
    :cond_0
    :goto_0
    return v4

    .line 5818
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_3

    move v0, v5

    .line 5820
    .local v0, "hapticsDisabled":Z
    :goto_1
    if-nez p3, :cond_2

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5823
    :cond_2
    const/4 v3, 0x0

    .line 5824
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 5826
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 5845
    :goto_2
    if-eqz p1, :cond_4

    .line 5846
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 5847
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 5852
    .local v1, "owningPackage":Ljava/lang/String;
    :goto_3
    array-length v6, v3

    if-ne v6, v5, :cond_5

    .line 5854
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;J)V

    :goto_4
    move v4, v5

    .line 5859
    goto :goto_0

    .end local v0    # "hapticsDisabled":Z
    .end local v1    # "owningPackage":Ljava/lang/String;
    .end local v2    # "owningUid":I
    .end local v3    # "pattern":[J
    :cond_3
    move v0, v4

    .line 5818
    goto :goto_1

    .line 5829
    .restart local v0    # "hapticsDisabled":Z
    .restart local v3    # "pattern":[J
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 5830
    goto :goto_2

    .line 5832
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 5833
    goto :goto_2

    .line 5835
    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 5836
    goto :goto_2

    .line 5838
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 5839
    goto :goto_2

    .line 5849
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 5850
    .restart local v2    # "owningUid":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "owningPackage":Ljava/lang/String;
    goto :goto_3

    .line 5857
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v1, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto :goto_4

    .line 5824
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    .line 2148
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2203
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 2150
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 2154
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2158
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2159
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 2162
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    .line 2166
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2170
    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2171
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 2175
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2180
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2185
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2190
    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 2193
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2196
    :sswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    .line 2199
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2148
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d4 -> :sswitch_5
        0x7de -> :sswitch_3
        0x7e1 -> :sswitch_4
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_6
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1779
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2126
    if-eqz p2, :cond_0

    .line 2127
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2128
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2130
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2208
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2209
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2210
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2219
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2220
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2222
    :cond_1
    return-void

    .line 2211
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_3

    .line 2212
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0

    .line 2215
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2216
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 5205
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v3, :cond_0

    move v0, v2

    .line 5346
    :goto_0
    return v0

    .line 5209
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5210
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 5211
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    .line 5212
    move v1, p2

    .line 5216
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_2

    .line 5218
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 5289
    .local v0, "preferredRotation":I
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 5343
    :pswitch_0
    if-ltz v0, :cond_1d

    .line 5344
    monitor-exit v5

    goto :goto_0

    .line 5348
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5219
    .restart local v1    # "sensorRotation":I
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v7, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_5

    .line 5224
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_4

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_2
    goto :goto_1

    .end local v0    # "preferredRotation":I
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_2

    .line 5226
    :cond_5
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_9

    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_9

    .line 5233
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_8

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_3
    goto :goto_1

    .end local v0    # "preferredRotation":I
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_3

    .line 5235
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v3, :cond_a

    .line 5238
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 5239
    .end local v0    # "preferredRotation":I
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v3, :cond_b

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v3, :cond_b

    .line 5245
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 5246
    .end local v0    # "preferredRotation":I
    :cond_b
    const/16 v3, 0xe

    if-ne p1, v3, :cond_c

    .line 5248
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto :goto_1

    .line 5249
    .end local v0    # "preferredRotation":I
    :cond_c
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_d

    if-eq p1, v7, :cond_e

    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    const/16 v3, 0xb

    if-eq p1, v3, :cond_e

    const/16 v3, 0xc

    if-eq p1, v3, :cond_e

    const/16 v3, 0xd

    if-eq p1, v3, :cond_e

    :cond_d
    if-eq p1, v8, :cond_e

    if-eq p1, v9, :cond_e

    const/4 v3, 0x6

    if-eq p1, v3, :cond_e

    const/4 v3, 0x7

    if-ne p1, v3, :cond_13

    .line 5261
    :cond_e
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_f

    .line 5265
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110020

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v4

    :goto_4
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 5268
    :cond_f
    if-ne v1, v7, :cond_10

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_10

    if-eq p1, v9, :cond_10

    const/16 v3, 0xd

    if-ne p1, v3, :cond_12

    .line 5272
    :cond_10
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .end local v0    # "preferredRotation":I
    :cond_11
    move v3, v2

    .line 5265
    goto :goto_4

    .line 5274
    :cond_12
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .line 5276
    .end local v0    # "preferredRotation":I
    :cond_13
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_14

    const/4 v3, 0x5

    if-eq p1, v3, :cond_14

    .line 5282
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .line 5286
    .end local v0    # "preferredRotation":I
    :cond_14
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_1

    .line 5292
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5293
    monitor-exit v5

    goto/16 :goto_0

    .line 5295
    :cond_15
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 5299
    .restart local v0    # "preferredRotation":I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5300
    monitor-exit v5

    goto/16 :goto_0

    .line 5302
    :cond_16
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 5306
    .restart local v0    # "preferredRotation":I
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5307
    monitor-exit v5

    goto/16 :goto_0

    .line 5309
    :cond_17
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 5313
    .restart local v0    # "preferredRotation":I
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5314
    monitor-exit v5

    goto/16 :goto_0

    .line 5316
    :cond_18
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 5321
    .restart local v0    # "preferredRotation":I
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5322
    monitor-exit v5

    goto/16 :goto_0

    .line 5324
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5325
    monitor-exit v5

    move v0, p2

    goto/16 :goto_0

    .line 5327
    :cond_1a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 5332
    .restart local v0    # "preferredRotation":I
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5333
    monitor-exit v5

    goto/16 :goto_0

    .line 5335
    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5336
    monitor-exit v5

    move v0, p2

    goto/16 :goto_0

    .line 5338
    :cond_1c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v5

    goto/16 :goto_0

    .line 5346
    .restart local v0    # "preferredRotation":I
    :cond_1d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto/16 :goto_0

    .line 5289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 5353
    packed-switch p1, :pswitch_data_0

    .line 5365
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5357
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_0

    .line 5362
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_0

    .line 5353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 5022
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5023
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5024
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 5026
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5027
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5028
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff(I)V

    .line 5030
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5031
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5032
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5033
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOffReason:I

    .line 5034
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5035
    return-void

    .line 5026
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5034
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v1, 0x1

    .line 5039
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5046
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5047
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5048
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5049
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5050
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5052
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 5053
    return-void

    .line 5050
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2231
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_3

    .line 2232
    if-eq p2, v1, :cond_0

    if-ne p2, v4, :cond_1

    .line 2234
    :cond_0
    const v0, 0x10a001b

    .line 2274
    :goto_0
    return v0

    .line 2235
    :cond_1
    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_b

    .line 2237
    :cond_2
    const v0, 0x10a001a

    goto :goto_0

    .line 2239
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_b

    .line 2241
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_7

    .line 2242
    if-eq p2, v1, :cond_4

    if-ne p2, v4, :cond_5

    .line 2244
    :cond_4
    const v0, 0x10a0015

    goto :goto_0

    .line 2245
    :cond_5
    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_b

    .line 2247
    :cond_6
    const v0, 0x10a0014

    goto :goto_0

    .line 2250
    :cond_7
    if-eq p2, v1, :cond_8

    if-ne p2, v4, :cond_9

    .line 2252
    :cond_8
    const v0, 0x10a0019

    goto :goto_0

    .line 2253
    :cond_9
    if-eq p2, v2, :cond_a

    if-ne p2, v3, :cond_b

    .line 2255
    :cond_a
    const v0, 0x10a0018

    goto :goto_0

    .line 2260
    :cond_b
    const/4 v0, 0x5

    if-ne p2, v0, :cond_c

    .line 2261
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2263
    const v0, 0x10a0011

    goto :goto_0

    .line 2265
    :cond_c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_d

    if-ne p2, v2, :cond_d

    .line 2271
    const/4 v0, -0x1

    goto :goto_0

    .line 2274
    :cond_d
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    .prologue
    const v3, 0x10a003f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2283
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 2295
    aput v1, p1, v2

    aput v1, p1, v1

    .line 2301
    :goto_0
    return-void

    .line 2286
    :pswitch_0
    const v0, 0x10a0041

    aput v0, p1, v1

    .line 2287
    aput v3, p1, v2

    goto :goto_0

    .line 2290
    :pswitch_1
    const v0, 0x10a0040

    aput v0, p1, v1

    .line 2291
    aput v3, p1, v2

    goto :goto_0

    .line 2299
    :cond_0
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    .line 2284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5178
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5179
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5182
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5183
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 3486
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 3494
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 3495
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 3496
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 3497
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 3529
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3531
    return-void

    .line 3505
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_4

    .line 3506
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3522
    :cond_2
    :goto_1
    if-eqz p5, :cond_8

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_2
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3523
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3524
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3514
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3515
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 3516
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 3517
    :cond_5
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 3518
    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 3519
    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_8
    move-object v0, p9

    .line 3522
    goto :goto_2
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    .prologue
    .line 5785
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5786
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 5787
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 5788
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5790
    :cond_0
    monitor-exit v1

    .line 5791
    return-void

    .line 5790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 6047
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    .line 6048
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6049
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6051
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_1

    .line 6053
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6058
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 6059
    return-void

    .line 6054
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1508
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1509
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 1510
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 1511
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 1512
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 1514
    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4241
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    .line 4242
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4243
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 4244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4245
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4246
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4247
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4249
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 18
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1397
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1402
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1404
    .local v5, "res":Landroid/content/res/Resources;
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    .line 1405
    move/from16 v6, p3

    .line 1406
    .local v6, "shortSize":I
    move/from16 v2, p2

    .line 1407
    .local v2, "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1408
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1409
    const v8, 0x1110021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1410
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1411
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1430
    :goto_1
    const v8, 0x105000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1434
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeight:I

    if-lez v8, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dpToPixels(ILandroid/content/Context;)I

    move-result v8

    :goto_2
    aput v8, v11, v12

    aput v8, v9, v10

    .line 1440
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeightLand:I

    if-lez v8, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeightLand:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dpToPixels(ILandroid/content/Context;)I

    move-result v8

    :goto_3
    aput v8, v11, v12

    aput v8, v9, v10

    .line 1448
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarWidth:I

    if-lez v8, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dpToPixels(ILandroid/content/Context;)I

    move-result v8

    :goto_4
    aput v8, v15, v16

    aput v8, v13, v14

    aput v8, v11, v12

    aput v8, v9, v10

    .line 1458
    mul-int/lit16 v8, v6, 0xa0

    div-int v7, v8, p4

    .line 1459
    .local v7, "shortSizeDp":I
    mul-int/lit16 v8, v2, 0xa0

    div-int v3, v8, p4

    .line 1462
    .local v3, "longSizeDp":I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1464
    const v8, 0x1110049

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1467
    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1468
    .local v4, "navBarOverride":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1469
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1476
    :cond_2
    :goto_6
    const-string v8, "portrait"

    const-string v9, "persist.demo.hdmirotation"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1477
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1481
    :goto_7
    const-string v8, "persist.demo.hdmirotationlock"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1485
    const/16 v8, 0x3c0

    if-lt v3, v8, :cond_c

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_c

    const v8, 0x111005c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "true"

    const-string v9, "config.override_forced_orient"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    goto/16 :goto_0

    .line 1413
    .end local v3    # "longSizeDp":I
    .end local v4    # "navBarOverride":Ljava/lang/String;
    .end local v7    # "shortSizeDp":I
    :cond_3
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1414
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_1

    .line 1417
    .end local v2    # "longSize":I
    .end local v6    # "shortSize":I
    :cond_4
    move/from16 v6, p2

    .line 1418
    .restart local v6    # "shortSize":I
    move/from16 v2, p3

    .line 1419
    .restart local v2    # "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1420
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1421
    const v8, 0x1110021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1422
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1423
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    .line 1425
    :cond_5
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1426
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_1

    .line 1434
    :cond_6
    const v8, 0x105000f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto/16 :goto_2

    .line 1440
    :cond_7
    const v8, 0x1050010

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto/16 :goto_3

    .line 1448
    :cond_8
    const v8, 0x1050011

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto/16 :goto_4

    .line 1462
    .restart local v3    # "longSizeDp":I
    .restart local v7    # "shortSizeDp":I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 1470
    .restart local v4    # "navBarOverride":Ljava/lang/String;
    :cond_a
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1471
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_6

    .line 1479
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_7

    .line 1485
    :cond_c
    const/4 v8, 0x0

    goto :goto_8
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 6041
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6042
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6043
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 5469
    if-nez p1, :cond_0

    .line 5470
    const-string p1, "stop.looking.at.me.swan"

    .line 5472
    :cond_0
    sput-object p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->currentPackageName:Ljava/lang/String;

    .line 5473
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 5371
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 5372
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .prologue
    .line 5412
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 5413
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x2711

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5416
    return-void

    .line 5413
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setTouchExplorationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 6076
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 6077
    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 5391
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5394
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 5395
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5399
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5409
    :goto_0
    return-void

    .line 5404
    :cond_0
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 5484
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 5544
    :goto_0
    return-void

    .line 5485
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 5

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_0

    .line 1013
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1016
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1017
    if-eqz v0, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1022
    :cond_1
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .locals 2
    .param p1, "behavior"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1127
    return-void
.end method

.method startDockOrHome()V
    .locals 4

    .prologue
    .line 5717
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    .line 5719
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5720
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 5722
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5729
    :goto_0
    return-void

    .line 5724
    :catch_0
    move-exception v1

    .line 5728
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1919
    packed-switch p1, :pswitch_data_0

    .line 1930
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1922
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1924
    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 1926
    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1928
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 1919
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5452
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 5454
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5455
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 5456
    monitor-exit v1

    .line 5457
    return-void

    .line 5456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 5433
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_0

    .line 5434
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 5435
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 5437
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5438
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 5440
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5446
    monitor-exit v1

    .line 5447
    return-void

    .line 5446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public takeScreenrecord()V
    .locals 8

    .prologue
    .line 4420
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4421
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 4422
    monitor-exit v4

    .line 4466
    :goto_0
    return-void

    .line 4424
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.omni.screenrecord.TakeScreenrecordService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4426
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4427
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4428
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4458
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4460
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 4463
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenrecordTimeout:Ljava/lang/Runnable;

    const-wide/32 v6, 0x1c61a0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4465
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public takeScreenshot()V
    .locals 8

    .prologue
    .line 4365
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4366
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 4367
    monitor-exit v4

    .line 4416
    :goto_0
    return-void

    .line 4369
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4372
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4373
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 4410
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4412
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4413
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4415
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    const/4 v0, 0x1

    .line 799
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    const/4 v0, 0x0

    .line 803
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2

    .line 804
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 806
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 811
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 814
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_0
.end method

.method updateRotation(Z)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 5649
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5653
    :goto_0
    return-void

    .line 5650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 1
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 5658
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5662
    :goto_0
    return-void

    .line 5659
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 21

    .prologue
    .line 1517
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1518
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 1519
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1520
    iget v7, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1521
    .local v7, "density":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1522
    .local v12, "resolver":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 1523
    .local v13, "updateRotation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1524
    :try_start_0
    const-string v17, "end_button_behavior"

    const/16 v19, 0x2

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1528
    const-string v17, "incall_power_button_behavior"

    const/16 v19, 0x1

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1533
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateKeyAssignments()V

    .line 1535
    const-string v17, "enable_navigation_bar"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWantsNavigationBar:Z

    .line 1539
    const-string v17, "user_rotation"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 1542
    .local v14, "userRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v14, :cond_0

    .line 1543
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1544
    const/4 v13, 0x1

    .line 1546
    :cond_0
    const-string v17, "accelerometer_rotation"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_8

    const/4 v15, 0x0

    .line 1550
    .local v15, "userRotationMode":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v15, :cond_1

    .line 1551
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1552
    const/4 v13, 0x1

    .line 1553
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1555
    :cond_1
    const-string v17, "volume_keys_double_tap_action"

    const/16 v19, 0x1

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$AOKP;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeysDoubleTapEnabled:Z

    .line 1558
    const-string v17, "volume_wake_screen"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeWakeScreen:Z

    .line 1560
    const-string v17, "volume_music_controls"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolBtnMusicControls:Z

    .line 1563
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1564
    const-string v17, "pointer_location"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 1566
    .local v11, "pointerLocation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v11, :cond_2

    .line 1567
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v11, :cond_9

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1573
    .end local v11    # "pointerLocation":I
    :cond_2
    const-string v17, "screen_off_timeout"

    const/16 v19, 0x0

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1575
    const-string v17, "default_input_method"

    const/16 v19, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1577
    .local v9, "imId":Ljava/lang/String;
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    const/4 v8, 0x1

    .line 1578
    .local v8, "hasSoftInput":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_3

    .line 1579
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1580
    const/4 v13, 0x1

    .line 1582
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->loadSetting()V

    .line 1585
    :cond_4
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    if-eqz v13, :cond_5

    .line 1587
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1589
    :cond_5
    const-string v17, "navigation_bar_height"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1591
    .local v4, "NavHeight":I
    const-string v17, "navigation_bar_height_landscape"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1593
    .local v5, "NavHeightLand":I
    const-string v17, "navigation_bar_width"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1595
    .local v6, "NavWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeightLand:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v6, v0, :cond_7

    .line 1597
    :cond_6
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeight:I

    .line 1598
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarHeightLand:I

    .line 1599
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserNavBarWidth:I

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1604
    :cond_7
    return-void

    .line 1546
    .end local v4    # "NavHeight":I
    .end local v5    # "NavHeightLand":I
    .end local v6    # "NavWidth":I
    .end local v8    # "hasSoftInput":Z
    .end local v9    # "imId":Ljava/lang/String;
    .end local v15    # "userRotationMode":I
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1568
    .restart local v11    # "pointerLocation":I
    .restart local v15    # "userRotationMode":I
    :cond_9
    const/16 v17, 0x2

    goto/16 :goto_1

    .line 1577
    .end local v11    # "pointerLocation":I
    .restart local v9    # "imId":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1585
    .end local v9    # "imId":Ljava/lang/String;
    .end local v14    # "userRotation":I
    .end local v15    # "userRotationMode":I
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17
.end method

.method public userActivity()V
    .locals 5

    .prologue
    .line 5571
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 5572
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 5574
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5575
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5577
    :cond_0
    monitor-exit v1

    .line 5578
    return-void

    .line 5577
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2306
    packed-switch p1, :pswitch_data_0

    .line 2317
    :cond_0
    :goto_0
    return v1

    .line 2310
    :pswitch_0
    if-eqz p3, :cond_1

    move v1, v2

    .line 2311
    goto :goto_0

    .line 2313
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2314
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 2315
    aget v3, v0, v2

    if-ne p1, v3, :cond_2

    aget v3, v0, v1

    if-eq p2, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 2306
    :pswitch_data_0
    .packed-switch 0x10a0040
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public wantsNavigationBar()Z
    .locals 1

    .prologue
    .line 6036
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 1824
    if-lt p1, v1, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    .line 1913
    :goto_0
    :pswitch_0
    return v0

    .line 1827
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1912
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1829
    goto :goto_0

    .line 1836
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1838
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1841
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1844
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 1847
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 1850
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 1853
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 1856
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 1859
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 1862
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 1866
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 1868
    :pswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 1870
    :pswitch_e
    const/16 v0, 0xf

    goto :goto_0

    .line 1872
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 1874
    :pswitch_10
    const/16 v0, 0x11

    goto :goto_0

    .line 1878
    :pswitch_11
    const/16 v0, 0x12

    goto :goto_0

    .line 1882
    :pswitch_12
    const/16 v0, 0x13

    goto :goto_0

    .line 1885
    :pswitch_13
    const/16 v0, 0x14

    goto :goto_0

    .line 1888
    :pswitch_14
    const/16 v0, 0x15

    goto :goto_0

    .line 1891
    :pswitch_15
    const/16 v0, 0x16

    goto :goto_0

    .line 1894
    :pswitch_16
    const/16 v0, 0x17

    goto :goto_0

    .line 1897
    :pswitch_17
    const/16 v0, 0x18

    goto :goto_0

    .line 1901
    :pswitch_18
    const/16 v0, 0x19

    goto :goto_0

    .line 1903
    :pswitch_19
    const/16 v0, 0x1a

    goto :goto_0

    .line 1905
    :pswitch_1a
    const/16 v0, 0x1b

    goto :goto_0

    .line 1908
    :pswitch_1b
    const/16 v0, 0x1c

    goto :goto_0

    .line 1910
    :pswitch_1c
    const/16 v0, 0x1d

    goto :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_5
        :pswitch_12
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_15
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_10
        :pswitch_19
        :pswitch_18
        :pswitch_e
        :pswitch_1b
        :pswitch_13
        :pswitch_11
        :pswitch_1a
        :pswitch_1c
        :pswitch_7
        :pswitch_14
        :pswitch_1
        :pswitch_17
        :pswitch_16
        :pswitch_4
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method
