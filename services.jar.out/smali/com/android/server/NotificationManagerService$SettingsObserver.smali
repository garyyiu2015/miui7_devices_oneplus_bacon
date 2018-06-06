.class Lcom/android/server/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 1270
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1263
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1266
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 1271
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1274
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1275
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1277
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1279
    const-string v1, "notification_light_off"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1281
    const-string v1, "notification_light_on"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1283
    const-string v1, "notification_light_color"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1285
    const-string v1, "led_custom_values"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1287
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1288
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1291
    invoke-virtual {p0, p2}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 1293
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1296
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1297
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1298
    :cond_0
    const-string v3, "notification_light_pulse"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1300
    .local v0, "pulseEnabled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v3

    if-eq v3, v0, :cond_2

    .line 1301
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v3, v0}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 1302
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;)V

    .line 1305
    .end local v0    # "pulseEnabled":Z
    :cond_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1306
    :cond_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    .line 1308
    :cond_4
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1309
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_color"

    const v6, 0x1060073

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$2102(Lcom/android/server/NotificationManagerService;I)I

    .line 1314
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_off"

    const v6, 0x10e0022

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$2202(Lcom/android/server/NotificationManagerService;I)I

    .line 1318
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_on"

    const v6, 0x10e0021

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$AOKP;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$2302(Lcom/android/server/NotificationManagerService;I)I

    .line 1323
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mCustomLedColors:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/NotificationManagerService;->access$2400(Lcom/android/server/NotificationManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1324
    iget-object v3, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v4, "led_custom_values"

    invoke-static {v1, v4}, Landroid/provider/Settings$AOKP;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/NotificationManagerService;->parseCustomLedValues(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;)V

    .line 1326
    return-void
.end method
