.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$i:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$p:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$pkgsSize:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/pm/PackageParser$Package;I)V
    .locals 0

    .prologue
    .line 4087
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$pkgsSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4090
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4091
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4096
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 4100
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;)Landroid/view/WindowManagerPolicy;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy;->setPackageName(Ljava/lang/String;)V

    .line 4101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104044d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$6;->val$i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$6;->val$pkgsSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4108
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    iget-boolean v2, v2, Landroid/content/pm/PackageParser$Package;->mDidDexOpt:Z

    if-nez v2, :cond_1

    .line 4109
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->performDexOptLI(Landroid/content/pm/PackageParser$Package;ZZZ)I
    invoke-static {v2, v3, v8, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$1900(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;ZZZ)I

    .line 4111
    :cond_1
    return-void

    .line 4097
    :catch_0
    move-exception v1

    .line 4098
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 4100
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$p:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4105
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    goto :goto_2
.end method
