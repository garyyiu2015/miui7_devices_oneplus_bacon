.class public Lcom/android/internal/util/aokp/NavBarHelpers;
.super Ljava/lang/Object;
.source "NavBarHelpers.java"


# static fields
.field private static final EXCLUDED_FROM_NAVBAR:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_UNLOCK:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_CAMERA:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_CLOCKOPTIONS:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_SILENT:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_VIB:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_SILENT_VIB:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_EVENT:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_TODAY:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_ALARM:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_DPAD_LEFT:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_DPAD_RIGHT:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_TORCH:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_WIDGETS:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/util/aokp/NavBarHelpers;->EXCLUDED_FROM_NAVBAR:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static getFriendlyActivityName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 126
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 127
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 129
    .local v1, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    if-nez v1, :cond_0

    .line 132
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 136
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "friendlyName":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "friendlyName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFriendlyShortcutName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "activityName":Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIconImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v2}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_0
    const-string v2, "**"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-static {p0, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 65
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, "actionIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 66
    .end local v0    # "actionIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 68
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v2}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/util/aokp/AwesomeConstants;->getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .restart local v0    # "actionIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 70
    .end local v0    # "actionIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 72
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v2}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/util/aokp/AwesomeConstants;->getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "actionIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getNavBarActions()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v5, "mActionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeConstants;->AwesomeActions()[Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "mActionStart":[Ljava/lang/String;
    array-length v8, v6

    .line 85
    .local v8, "startLength":I
    sget-object v9, Lcom/android/internal/util/aokp/NavBarHelpers;->EXCLUDED_FROM_NAVBAR:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    array-length v1, v9

    .line 86
    .local v1, "excludeLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_3

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "itemFound":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 89
    aget-object v9, v6, v2

    sget-object v10, Lcom/android/internal/util/aokp/NavBarHelpers;->EXCLUDED_FROM_NAVBAR:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 90
    const/4 v3, 0x1

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    :cond_1
    if-nez v3, :cond_2

    .line 94
    aget-object v9, v6, v2

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "itemFound":Z
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, "actionSize":I
    new-array v7, v0, [Ljava/lang/String;

    .line 99
    .local v7, "mActions":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 100
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_4
    return-object v7
.end method

.method public static getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v2}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_0
    const-string v2, "**"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {p0, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    .line 113
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-static {p0, v1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {p0, v1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getFriendlyShortcutName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v2}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
