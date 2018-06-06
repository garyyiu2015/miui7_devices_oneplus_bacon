.class Lcom/android/internal/policy/impl/GlobalActions$21;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createRebootDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$rebootReasons:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->val$rebootReasons:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1430
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->val$rebootReasons:[Ljava/lang/String;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->rebootIndex:I
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3000()I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "soft_reboot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    :try_start_0
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 1434
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 1435
    invoke-interface {v0}, Landroid/app/IActivityManager;->restart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 1437
    :catch_0
    move-exception v1

    .line 1438
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GlobalActions"

    const-string v3, "failure trying to perform soft reboot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1441
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$21;->val$rebootReasons:[Ljava/lang/String;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->rebootIndex:I
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3000()I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Ljava/lang/String;)V

    goto :goto_0
.end method
