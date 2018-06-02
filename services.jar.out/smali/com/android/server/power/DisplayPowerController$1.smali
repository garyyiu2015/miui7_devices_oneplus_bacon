.class Lcom/android/server/power/DisplayPowerController$1;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/DisplayPowerController;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$1;->val$cr:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updateButtons(Landroid/content/ContentResolver;)V
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$000(Lcom/android/server/power/DisplayPowerController;Landroid/content/ContentResolver;)V

    .line 433
    return-void
.end method
