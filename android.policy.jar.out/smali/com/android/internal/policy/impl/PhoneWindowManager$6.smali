.class Lcom/android/internal/policy/impl/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 989
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 992
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v1, "com.android.launcher"

    .line 993
    .local v1, "defaultHomePackage":Ljava/lang/String;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 995
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 996
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 998
    :cond_0
    const/4 v5, 0x0

    .line 999
    .local v5, "targetKilled":Z
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1001
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1002
    const/4 v5, 0x1

    .line 1004
    :cond_1
    if-eqz v5, :cond_2

    .line 1005
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1006
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v7, 0x1040684

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1008
    :cond_2
    return-void
.end method
