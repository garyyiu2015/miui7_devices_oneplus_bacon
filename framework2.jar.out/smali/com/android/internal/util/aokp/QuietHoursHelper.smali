.class public Lcom/android/internal/util/aokp/QuietHoursHelper;
.super Ljava/lang/Object;
.source "QuietHoursHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inQuietHours(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/aokp/QuietHoursHelper;->inQuietHours(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    .local v2, "mode":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_enabled"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 57
    .local v3, "quietHoursEnabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_start"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 60
    .local v5, "quietHoursStart":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_end"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 64
    .local v4, "quietHoursEnd":I
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p1, v7, v10}, Landroid/provider/Settings$AOKP;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    move v2, v6

    .line 70
    :cond_0
    :goto_1
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 72
    if-ne v5, v4, :cond_4

    .line 85
    :cond_1
    :goto_2
    return v6

    .end local v3    # "quietHoursEnabled":Z
    .end local v4    # "quietHoursEnd":I
    .end local v5    # "quietHoursStart":I
    :cond_2
    move v3, v7

    .line 54
    goto :goto_0

    .restart local v3    # "quietHoursEnabled":Z
    .restart local v4    # "quietHoursEnd":I
    .restart local v5    # "quietHoursStart":I
    :cond_3
    move v2, v7

    .line 65
    goto :goto_1

    .line 76
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int v1, v8, v9

    .line 78
    .local v1, "minutes":I
    if-ge v4, v5, :cond_7

    .line 80
    if-gt v1, v5, :cond_5

    if-ge v1, v4, :cond_6

    :cond_5
    move v7, v6

    :cond_6
    move v6, v7

    goto :goto_2

    .line 82
    :cond_7
    if-le v1, v5, :cond_8

    if-lt v1, v4, :cond_1

    :cond_8
    move v6, v7

    goto :goto_2

    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "minutes":I
    :cond_9
    move v6, v7

    .line 85
    goto :goto_2
.end method

.method public static isQuietHoursDimEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_dim"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuietHoursNotificationEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuietHoursRingerEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_ringer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQuietHoursVibrateEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_still"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
