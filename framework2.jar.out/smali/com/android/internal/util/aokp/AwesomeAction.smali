.class public Lcom/android/internal/util/aokp/AwesomeAction;
.super Ljava/lang/Object;
.source "AwesomeAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/aokp/AwesomeAction$3;,
        Lcom/android/internal/util/aokp/AwesomeAction$KillTask;,
        Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;,
        Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;
    }
.end annotation


# static fields
.field private static final SysUIPackage:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "AwesomeAction"

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/android/internal/util/aokp/AwesomeAction$2;

    invoke-direct {v0}, Lcom/android/internal/util/aokp/AwesomeAction$2;-><init>()V

    sput-object v0, Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/internal/util/aokp/AwesomeAction;->toggleLastApp(Landroid/content/Context;)V

    return-void
.end method

.method private static injectKeyDelayed(I)V
    .locals 5
    .param p0, "keycode"    # I

    .prologue
    .line 271
    new-instance v1, Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;

    invoke-direct {v1, p0}, Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;-><init>(I)V

    .line 272
    .local v1, "onInjectKey_Up":Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;
    new-instance v0, Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;

    invoke-direct {v0, p0}, Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;-><init>(I)V

    .line 273
    .local v0, "onInjectKey_Down":Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 265
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static launchAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/util/aokp/AwesomeAction$1;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/util/aokp/AwesomeAction$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static toggleLastApp(Landroid/content/Context;)V
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, "lastAppId":I
    const/4 v4, 0x1

    .line 350
    .local v4, "looper":I
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 353
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "com.android.launcher"

    .line 354
    .local v1, "defaultHomePackage":Ljava/lang/String;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 356
    .local v6, "res":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 357
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 359
    :cond_0
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 362
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    if-nez v3, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 363
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.systemui"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 366
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 368
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 371
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/internal/util/aokp/AwesomeAction;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    const/4 v8, 0x2

    invoke-virtual {v0, v3, v8}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 374
    :cond_3
    return-void
.end method
