.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransition$SettingsObserver;
    }
.end annotation


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_APP_TRANSITIONS:Z = false

.field private static final DEFAULT_APP_TRANSITION_DURATION:J = 0xfaL

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2007

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1006

.field public static final TRANSIT_ENTER_MASK:I = 0x1000

.field public static final TRANSIT_EXIT_MASK:I = 0x2000

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x2009

.field public static final TRANSIT_TASK_OPEN:I = 0x1008

.field public static final TRANSIT_TASK_TO_BACK:I = 0x200b

.field public static final TRANSIT_TASK_TO_FRONT:I = 0x100a

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0x200c

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0x200f

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0x100e

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0x100d


# instance fields
.field private mActivityAnimations:[I

.field private mAnimationDuration:I

.field private mAppTransitionState:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mExitOnly:Z

.field private final mH:Landroid/os/Handler;

.field private mIsResId:Z

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private mNoOverrides:Z

.field private mReverseExit:Z

.field private mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

.field private final mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 132
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 150
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 157
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    .line 159
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 164
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 167
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 168
    new-instance v0, Lcom/android/server/wm/AppTransition$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/AppTransition$SettingsObserver;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mSettingsObserver:Lcom/android/server/wm/AppTransition$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition$SettingsObserver;->observe()V

    .line 170
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    .line 171
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 174
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 176
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->updateSettings()V

    return-void
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 802
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 804
    :pswitch_0
    const-string v0, "APP_STATE_IDLE"

    goto :goto_0

    .line 806
    :pswitch_1
    const-string v0, "APP_STATE_READY"

    goto :goto_0

    .line 808
    :pswitch_2
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_0

    .line 810
    :pswitch_3
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "transition"    # I

    .prologue
    .line 755
    sparse-switch p0, :sswitch_data_0

    .line 796
    const-string v0, "<UNKNOWN>"

    :goto_0
    return-object v0

    .line 757
    :sswitch_0
    const-string v0, "TRANSIT_UNSET"

    goto :goto_0

    .line 760
    :sswitch_1
    const-string v0, "TRANSIT_NONE"

    goto :goto_0

    .line 763
    :sswitch_2
    const-string v0, "TRANSIT_EXIT_MASK"

    goto :goto_0

    .line 766
    :sswitch_3
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_0

    .line 769
    :sswitch_4
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_0

    .line 772
    :sswitch_5
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_0

    .line 775
    :sswitch_6
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_0

    .line 778
    :sswitch_7
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_0

    .line 781
    :sswitch_8
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_0

    .line 784
    :sswitch_9
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_0

    .line 787
    :sswitch_a
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_0

    .line 790
    :sswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_0

    .line 793
    :sswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_0

    .line 755
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1006 -> :sswitch_3
        0x1008 -> :sswitch_5
        0x100a -> :sswitch_7
        0x100d -> :sswitch_a
        0x100e -> :sswitch_b
        0x2000 -> :sswitch_2
        0x2007 -> :sswitch_4
        0x2009 -> :sswitch_6
        0x200b -> :sswitch_8
        0x200c -> :sswitch_9
        0x200f -> :sswitch_c
    .end sparse-switch
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 348
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 349
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 350
    int-to-float v1, p0

    .line 352
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .locals 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 357
    const/4 v11, 0x0

    .line 358
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 361
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 362
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v9, v5}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v10, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 365
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 367
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 368
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 370
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 371
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 372
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 373
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 374
    move-object v11, v15

    .line 392
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 398
    const-wide/16 v13, 0xfa

    .line 401
    .local v13, "duration":J
    :goto_1
    invoke-virtual {v11, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 402
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 405
    return-object v11

    .line 375
    .end local v13    # "duration":J
    :cond_0
    const/16 v6, 0x100e

    move/from16 v0, p1

    if-eq v0, v6, :cond_1

    const/16 v6, 0x200f

    move/from16 v0, p1

    if-ne v0, v6, :cond_2

    .line 381
    :cond_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 382
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_0

    .line 385
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_0

    .line 395
    :sswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v13, v6

    .line 396
    .restart local v13    # "duration":J
    goto :goto_1

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 269
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 274
    .local v0, "packageName":Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 275
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_0

    .line 276
    const-string v0, "android"

    .line 280
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 283
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :goto_1
    return-object v2

    .line 273
    :cond_1
    const-string v0, "android"

    goto :goto_0

    .line 283
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 289
    if-eqz p1, :cond_1

    .line 290
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 291
    const-string p1, "android"

    .line 295
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 324
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 326
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 327
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 328
    move v0, p2

    .line 331
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 332
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 334
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 817
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 819
    :pswitch_0
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_0

    .line 821
    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_0

    .line 823
    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_0

    .line 825
    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_0

    .line 827
    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 905
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 906
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    sget-object v3, Landroid/provider/Settings$AOKP;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 910
    :cond_0
    const-string v2, "animation_controls_no_override"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mNoOverrides:Z

    .line 911
    const-string v2, "animation_controls_exit_only"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    .line 912
    const-string v2, "animation_controls_reverse_exit"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    .line 913
    const-string v2, "animation_controls_duration"

    const/16 v3, 0x19

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    .line 914
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 255
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 257
    return-void
.end method

.method createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;
    .locals 24
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "thumb"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 412
    .local v23, "thumbWidthI":I
    if-lez v23, :cond_0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 413
    .local v22, "thumbWidth":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    .line 414
    .local v21, "thumbHeightI":I
    if-lez v21, :cond_1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 415
    .local v20, "thumbHeight":F
    :goto_1
    if-eqz p3, :cond_3

    .line 418
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_2

    .line 419
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 420
    .local v6, "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 421
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 424
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 427
    .local v16, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeoutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 430
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 431
    .local v19, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 432
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 433
    move-object/from16 v5, v19

    .line 486
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v16    # "alpha":Landroid/view/animation/Animation;
    .end local v19    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_2
    sparse-switch p1, :sswitch_data_0

    .line 492
    const-wide/16 v17, 0xfa

    .line 495
    .local v17, "duration":J
    :goto_3
    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 496
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 498
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 499
    return-object v5

    .line 412
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v17    # "duration":J
    .end local v20    # "thumbHeight":F
    .end local v21    # "thumbHeightI":I
    .end local v22    # "thumbWidth":F
    :cond_0
    const/high16 v22, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 414
    .restart local v21    # "thumbHeightI":I
    .restart local v22    # "thumbWidth":F
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 435
    .restart local v20    # "thumbHeight":F
    :cond_2
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v7, v22

    .line 436
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v7, v20

    .line 437
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v8

    invoke-static {v11, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 440
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 441
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    :cond_3
    if-eqz p2, :cond_5

    .line 443
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_4

    .line 444
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 445
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 446
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v10, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v11, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 449
    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_2

    .line 451
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    :cond_4
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 455
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_7

    .line 456
    const/16 v7, 0x100e

    move/from16 v0, p1

    if-ne v0, v7, :cond_6

    .line 460
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 463
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_6
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 466
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_7
    move/from16 v0, p4

    int-to-float v7, v0

    div-float v6, v22, v7

    .line 467
    .restart local v6    # "scaleW":F
    move/from16 v0, p5

    int-to-float v7, v0

    div-float v8, v20, v7

    .line 468
    .restart local v8    # "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-static {v7, v6}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-static {v7, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object v9, v4

    move v11, v6

    move v13, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 472
    .restart local v4    # "scale":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    .restart local v16    # "alpha":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 475
    .restart local v19    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 476
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 477
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 478
    move-object/from16 v5, v19

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .line 489
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v16    # "alpha":Landroid/view/animation/Animation;
    .end local v19    # "set":Landroid/view/animation/AnimationSet;
    :sswitch_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v0, v7

    move-wide/from16 v17, v0

    .line 490
    .restart local v17    # "duration":J
    goto/16 :goto_3

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x2007 -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    const-string v0, "  mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    .line 838
    const-string v0, "  mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 869
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    .line 870
    const-string v0, "  mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 873
    :cond_1
    return-void

    .line 842
    :pswitch_0
    const-string v0, "  mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    const-string v0, "  mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :pswitch_1
    const-string v0, "  mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 851
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 853
    const-string v0, "  mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 854
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 855
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 860
    :pswitch_2
    const-string v0, "  mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 862
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 864
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 866
    const-string v0, "  mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method freeze()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransition(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 263
    return-void
.end method

.method getAppTransition()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    .line 238
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 239
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 240
    return-void
.end method

.method goodToGo()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 250
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 251
    return-void
.end method

.method isReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionEqual(I)Z
    .locals 1
    .param p1, "transit"    # I

    .prologue
    .line 197
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "anim":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 304
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 305
    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    if-eqz v3, :cond_1

    .line 306
    move v0, p2

    .line 315
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 316
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 318
    :goto_1
    return-object v3

    .line 308
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 309
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 310
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 311
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_0

    .line 318
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZII)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 505
    iput-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 507
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v0, :cond_1

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/AppTransition;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 683
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_1
    return-object v6

    .line 508
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    goto :goto_0

    .line 515
    :cond_1
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v5, :cond_2

    .line 516
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v6

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .line 522
    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_2
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v2, v4, :cond_3

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v2, v1, :cond_5

    .line 524
    :cond_3
    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v4, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, p4

    move v5, p5

    .line 526
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->createThumbnailAnimationLocked(IZZII)Landroid/view/animation/Animation;

    move-result-object v6

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto :goto_1

    .end local v6    # "a":Landroid/view/animation/Animation;
    :cond_4
    move v0, v3

    .line 524
    goto :goto_2

    .line 536
    :cond_5
    const/4 v8, 0x0

    .line 537
    .local v8, "animAttr":I
    sparse-switch p2, :sswitch_data_0

    .line 669
    :goto_3
    if-eqz v8, :cond_25

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 670
    .restart local v6    # "a":Landroid/view/animation/Animation;
    :goto_4
    if-eqz v6, :cond_6

    .line 671
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    if-lez v0, :cond_6

    .line 672
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 675
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    goto :goto_1

    .line 539
    .end local v6    # "a":Landroid/view/animation/Animation;
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v2, v2, v3

    if-eqz v2, :cond_8

    .line 540
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v3

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 542
    .local v7, "animArray":[I
    if-eqz p3, :cond_7

    aget v8, v7, v0

    .line 545
    :goto_5
    goto :goto_3

    .line 542
    :cond_7
    aget v8, v7, v3

    goto :goto_5

    .line 546
    .end local v7    # "animArray":[I
    :cond_8
    if-eqz p3, :cond_9

    move v8, v1

    .line 550
    :goto_6
    goto :goto_3

    .line 546
    :cond_9
    const/4 v8, 0x5

    goto :goto_6

    .line 552
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v0

    if-eqz v1, :cond_b

    .line 553
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 554
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v0

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 555
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_a

    aget v8, v7, v0

    .line 558
    :goto_7
    goto :goto_3

    .line 555
    :cond_a
    aget v8, v7, v3

    goto :goto_7

    .line 559
    .end local v7    # "animArray":[I
    :cond_b
    if-eqz p3, :cond_c

    const/4 v8, 0x6

    .line 563
    :goto_8
    goto :goto_3

    .line 559
    :cond_c
    const/4 v8, 0x7

    goto :goto_8

    .line 565
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v5

    if-eqz v1, :cond_e

    .line 566
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 567
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v5

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 568
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_d

    aget v8, v7, v0

    .line 571
    :goto_9
    goto :goto_3

    .line 568
    :cond_d
    aget v8, v7, v3

    goto :goto_9

    .line 572
    .end local v7    # "animArray":[I
    :cond_e
    if-eqz p3, :cond_f

    const/16 v8, 0x8

    .line 576
    :goto_a
    goto :goto_3

    .line 572
    :cond_f
    const/16 v8, 0x9

    goto :goto_a

    .line 578
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v4

    if-eqz v1, :cond_11

    .line 579
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 580
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v1, v4

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 581
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_10

    aget v8, v7, v0

    .line 584
    :goto_b
    goto/16 :goto_3

    .line 581
    :cond_10
    aget v8, v7, v3

    goto :goto_b

    .line 585
    .end local v7    # "animArray":[I
    :cond_11
    if-eqz p3, :cond_12

    const/16 v8, 0xa

    .line 589
    :goto_c
    goto/16 :goto_3

    .line 585
    :cond_12
    const/16 v8, 0xb

    goto :goto_c

    .line 591
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v2, v2, v1

    if-eqz v2, :cond_14

    .line 592
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 593
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    aget v1, v2, v1

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 594
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_13

    aget v8, v7, v0

    .line 597
    :goto_d
    goto/16 :goto_3

    .line 594
    :cond_13
    aget v8, v7, v3

    goto :goto_d

    .line 598
    .end local v7    # "animArray":[I
    :cond_14
    if-eqz p3, :cond_15

    const/16 v8, 0xc

    .line 602
    :goto_e
    goto/16 :goto_3

    .line 598
    :cond_15
    const/16 v8, 0xd

    goto :goto_e

    .line 604
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-eqz v1, :cond_17

    .line 605
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 606
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 607
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_16

    aget v8, v7, v0

    .line 610
    :goto_f
    goto/16 :goto_3

    .line 607
    :cond_16
    aget v8, v7, v3

    goto :goto_f

    .line 611
    .end local v7    # "animArray":[I
    :cond_17
    if-eqz p3, :cond_18

    const/16 v8, 0xe

    .line 615
    :goto_10
    goto/16 :goto_3

    .line 611
    :cond_18
    const/16 v8, 0xf

    goto :goto_10

    .line 617
    :sswitch_6
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    if-eqz v1, :cond_1a

    .line 618
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 619
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 620
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_19

    aget v8, v7, v0

    .line 623
    :goto_11
    goto/16 :goto_3

    .line 620
    :cond_19
    aget v8, v7, v3

    goto :goto_11

    .line 624
    .end local v7    # "animArray":[I
    :cond_1a
    if-eqz p3, :cond_1b

    const/16 v8, 0x10

    .line 628
    :goto_12
    goto/16 :goto_3

    .line 624
    :cond_1b
    const/16 v8, 0x11

    goto :goto_12

    .line 630
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    if-eqz v1, :cond_1d

    .line 631
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 632
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 633
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_1c

    aget v8, v7, v0

    .line 636
    :goto_13
    goto/16 :goto_3

    .line 633
    :cond_1c
    aget v8, v7, v3

    goto :goto_13

    .line 637
    .end local v7    # "animArray":[I
    :cond_1d
    if-eqz p3, :cond_1e

    const/16 v8, 0x12

    .line 641
    :goto_14
    goto/16 :goto_3

    .line 637
    :cond_1e
    const/16 v8, 0x13

    goto :goto_14

    .line 643
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-eqz v1, :cond_20

    .line 644
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 645
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 646
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_1f

    aget v8, v7, v0

    .line 649
    :goto_15
    goto/16 :goto_3

    .line 646
    :cond_1f
    aget v8, v7, v3

    goto :goto_15

    .line 650
    .end local v7    # "animArray":[I
    :cond_20
    if-eqz p3, :cond_21

    const/16 v8, 0x14

    .line 654
    :goto_16
    goto/16 :goto_3

    .line 650
    :cond_21
    const/16 v8, 0x15

    goto :goto_16

    .line 656
    :sswitch_9
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-eqz v1, :cond_23

    .line 657
    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mIsResId:Z

    .line 658
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mActivityAnimations:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mExitOnly:Z

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mReverseExit:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getSystemAnimations(IZZ)[I

    move-result-object v7

    .line 659
    .restart local v7    # "animArray":[I
    if-eqz p3, :cond_22

    aget v8, v7, v0

    .line 662
    :goto_17
    goto/16 :goto_3

    .line 659
    :cond_22
    aget v8, v7, v3

    goto :goto_17

    .line 663
    .end local v7    # "animArray":[I
    :cond_23
    if-eqz p3, :cond_24

    const/16 v8, 0x16

    :goto_18
    goto/16 :goto_3

    :cond_24
    const/16 v8, 0x17

    goto :goto_18

    .line 669
    :cond_25
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNoOverrides:Z

    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 698
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 700
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 701
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 702
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 703
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 711
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNoOverrides:Z

    if-eqz v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 714
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 715
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 716
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 717
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 718
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartWidth:I

    .line 719
    iput p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartHeight:I

    .line 720
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 721
    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    goto :goto_0
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V
    .locals 1
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNoOverrides:Z

    if-eqz v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    if-eqz p5, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 732
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 733
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 734
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartX:I

    .line 735
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionStartY:I

    .line 736
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 737
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    goto :goto_0

    .line 729
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 739
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    goto :goto_0
.end method

.method postAnimationCallback()V
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mH:Landroid/os/Handler;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 691
    :cond_0
    return-void
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 246
    :cond_0
    return-void
.end method

.method setAppTransition(I)V
    .locals 0
    .param p1, "transit"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 206
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 876
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 877
    return-void
.end method

.method setIdle()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 223
    return-void
.end method

.method setReady()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 215
    return-void
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextAppTransition=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
