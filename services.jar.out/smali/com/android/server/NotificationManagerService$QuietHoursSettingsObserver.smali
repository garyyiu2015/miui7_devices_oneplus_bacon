.class Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuietHoursSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2474
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 2475
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2476
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2479
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2480
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "quiet_hours_enabled"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2482
    const-string v1, "quiet_hours_notifications"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2484
    const-string v1, "quiet_hours_dim"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2486
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->update()V

    .line 2487
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 2490
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->update()V

    .line 2491
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 2492
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2495
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2496
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v1, "quiet_hours_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    # setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/NotificationManagerService;->access$4302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2498
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v1, "quiet_hours_notifications"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    # setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursMute:Z
    invoke-static {v4, v1}, Lcom/android/server/NotificationManagerService;->access$3902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2500
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$QuietHoursSettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "quiet_hours_dim"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    # setter for: Lcom/android/server/NotificationManagerService;->mQuietHoursDim:Z
    invoke-static {v1, v2}, Lcom/android/server/NotificationManagerService;->access$4402(Lcom/android/server/NotificationManagerService;Z)Z

    .line 2502
    return-void

    :cond_0
    move v1, v3

    .line 2496
    goto :goto_0

    :cond_1
    move v1, v3

    .line 2498
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2500
    goto :goto_2
.end method
