.class public Lcom/android/internal/util/aokp/AwesomeConstants;
.super Ljava/lang/Object;
.source "AwesomeConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/aokp/AwesomeConstants$1;,
        Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    }
.end annotation


# static fields
.field public static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field public static final PRESS_LONG:I = 0x5

.field public static final SPEN_INSERT:I = 0x7

.field public static final SPEN_REMOVE:I = 0x6

.field public static final SWIPE_DOWN:I = 0x2

.field public static final SWIPE_LEFT:I = 0x0

.field public static final SWIPE_RIGHT:I = 0x1

.field public static final SWIPE_UP:I = 0x3

.field public static final TAP_DOUBLE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static AwesomeActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->values()[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/aokp/AwesomeConstants;->fromAwesomeActionArray([Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromAwesomeActionArray([Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;)[Ljava/lang/String;
    .locals 4
    .param p0, "allTargs"    # [Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    .prologue
    .line 94
    array-length v0, p0

    .line 95
    .local v0, "actions":I
    new-array v2, v0, [Ljava/lang/String;

    .line 96
    .local v2, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 97
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v2
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->values()[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    move-result-object v0

    .line 79
    .local v0, "allTargs":[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 80
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    aget-object v2, v0, v1

    .line 86
    .end local v0    # "allTargs":[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    .end local v1    # "i":I
    :goto_1
    return-object v2

    .line 79
    .restart local v0    # "allTargs":[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "allTargs":[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    .end local v1    # "i":I
    :cond_1
    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    goto :goto_1
.end method

.method public static getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionstring"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 236
    .local v2, "value":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->fromString(Ljava/lang/String;)Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    move-result-object v0

    .line 237
    .local v0, "action":Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    sget-object v3, Lcom/android/internal/util/aokp/AwesomeConstants$1;->$SwitchMap$com$android$internal$util$aokp$AwesomeConstants$AwesomeConstant:[I

    invoke-virtual {v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 326
    const-string v3, "com.android.systemui:drawable/ic_sysbar_null"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 330
    :goto_0
    return-object v2

    .line 239
    :pswitch_0
    const-string v3, "com.android.systemui:drawable/ic_sysbar_home"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 240
    goto :goto_0

    .line 242
    :pswitch_1
    const-string v3, "com.android.systemui:drawable/ic_sysbar_back"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 243
    goto :goto_0

    .line 245
    :pswitch_2
    const-string v3, "com.android.systemui:drawable/ic_sysbar_recent"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 246
    goto :goto_0

    .line 248
    :pswitch_3
    const-string v3, "com.android.systemui:drawable/ic_sysbar_recent_gb"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 249
    goto :goto_0

    .line 251
    :pswitch_4
    const-string v3, "com.android.systemui:drawable/ic_sysbar_search"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 252
    goto :goto_0

    .line 257
    :pswitch_5
    const-string v3, "com.android.systemui:drawable/ic_sysbar_menu_big"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 258
    goto :goto_0

    .line 260
    :pswitch_6
    const-string v3, "com.android.systemui:drawable/ic_sysbar_ime_switcher"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 261
    goto :goto_0

    .line 263
    :pswitch_7
    const-string v3, "com.android.systemui:drawable/ic_sysbar_killtask"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 264
    goto :goto_0

    .line 266
    :pswitch_8
    const-string v3, "com.android.systemui:drawable/ic_sysbar_lastapp"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 267
    goto :goto_0

    .line 269
    :pswitch_9
    const-string v3, "com.android.systemui:drawable/ic_sysbar_power"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 270
    goto :goto_0

    .line 272
    :pswitch_a
    const-string v3, "com.android.systemui:drawable/ic_sysbar_widget"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    goto :goto_0

    .line 275
    :pswitch_b
    const-string v3, "com.android.systemui:drawable/ic_sysbar_widget"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 276
    goto :goto_0

    .line 278
    :pswitch_c
    const-string v3, "com.android.systemui:drawable/ic_sysbar_notifications"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    goto :goto_0

    .line 281
    :pswitch_d
    const-string v3, "com.android.systemui:drawable/ic_sysbar_assist"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 282
    goto :goto_0

    .line 284
    :pswitch_e
    const-string v3, "com.android.systemui:drawable/ic_sysbar_clockoptions"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 285
    goto :goto_0

    .line 287
    :pswitch_f
    const-string v3, "com.android.systemui:drawable/ic_sysbar_voiceassist"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 288
    goto :goto_0

    .line 290
    :pswitch_10
    const-string v3, "com.android.systemui:drawable/ic_sysbar_torch"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 291
    goto :goto_0

    .line 293
    :pswitch_11
    const-string v3, "com.android.systemui:drawable/ic_sysbar_silent"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 294
    goto :goto_0

    .line 296
    :pswitch_12
    const-string v3, "com.android.systemui:drawable/ic_sysbar_vib"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 297
    goto/16 :goto_0

    .line 299
    :pswitch_13
    const-string v3, "com.android.systemui:drawable/ic_sysbar_silent_vib"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 300
    goto/16 :goto_0

    .line 302
    :pswitch_14
    const-string v3, "com.android.systemui:drawable/ic_sysbar_event"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 303
    goto/16 :goto_0

    .line 305
    :pswitch_15
    const-string v3, "com.android.systemui:drawable/ic_sysbar_today"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 306
    goto/16 :goto_0

    .line 308
    :pswitch_16
    const-string v3, "com.android.systemui:drawable/ic_sysbar_alarm"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 309
    goto/16 :goto_0

    .line 311
    :pswitch_17
    const-string v3, "com.android.systemui:drawable/ic_lockscreen_unlock"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 312
    goto/16 :goto_0

    .line 314
    :pswitch_18
    const-string v3, "com.android.systemui:drawable/ic_lockscreen_camera"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 315
    goto/16 :goto_0

    .line 317
    :pswitch_19
    const-string v3, "com.android.systemui:drawable/ic_sysbar_ime_left"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 318
    goto/16 :goto_0

    .line 320
    :pswitch_1a
    const-string v3, "com.android.systemui:drawable/ic_sysbar_ime_right"

    invoke-static {p0, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 321
    goto/16 :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public static getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionstring"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, ""

    .line 132
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    sget-object v3, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v3}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->fromString(Ljava/lang/String;)Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    move-result-object v0

    .line 136
    .local v0, "action":Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    sget-object v3, Lcom/android/internal/util/aokp/AwesomeConstants$1;->$SwitchMap$com$android$internal$util$aokp$AwesomeConstants$AwesomeConstant:[I

    invoke-virtual {v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 226
    const v3, 0x104067d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    :goto_0
    return-object v2

    .line 138
    :pswitch_0
    const v3, 0x1040665

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    const v3, 0x1040666

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    const v3, 0x1040667

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    goto :goto_0

    .line 147
    :pswitch_3
    const v3, 0x1040668

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    goto :goto_0

    .line 150
    :pswitch_4
    const v3, 0x1040669

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    goto :goto_0

    .line 156
    :pswitch_5
    const v3, 0x104066b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    goto :goto_0

    .line 159
    :pswitch_6
    const v3, 0x104066c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    goto :goto_0

    .line 162
    :pswitch_7
    const v3, 0x104066d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    goto :goto_0

    .line 165
    :pswitch_8
    const v3, 0x104066e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    goto :goto_0

    .line 168
    :pswitch_9
    const v3, 0x104066f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    goto :goto_0

    .line 171
    :pswitch_a
    const v3, 0x104067e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    goto :goto_0

    .line 174
    :pswitch_b
    const v3, 0x104067f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    goto :goto_0

    .line 177
    :pswitch_c
    const v3, 0x1040670

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    goto :goto_0

    .line 180
    :pswitch_d
    const v3, 0x1040671

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    goto :goto_0

    .line 183
    :pswitch_e
    const v3, 0x1040672

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    goto :goto_0

    .line 186
    :pswitch_f
    const v3, 0x1040673

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    goto :goto_0

    .line 189
    :pswitch_10
    const v3, 0x1040674

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    goto/16 :goto_0

    .line 192
    :pswitch_11
    const v3, 0x1040675

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    goto/16 :goto_0

    .line 195
    :pswitch_12
    const v3, 0x1040676

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    goto/16 :goto_0

    .line 198
    :pswitch_13
    const v3, 0x1040677

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    goto/16 :goto_0

    .line 201
    :pswitch_14
    const v3, 0x1040678

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    goto/16 :goto_0

    .line 204
    :pswitch_15
    const v3, 0x1040679

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    goto/16 :goto_0

    .line 207
    :pswitch_16
    const v3, 0x104067a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    goto/16 :goto_0

    .line 210
    :pswitch_17
    const v3, 0x104067b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    goto/16 :goto_0

    .line 213
    :pswitch_18
    const v3, 0x104067c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    goto/16 :goto_0

    .line 216
    :pswitch_19
    const v3, 0x1040682

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    goto/16 :goto_0

    .line 219
    :pswitch_1a
    const v3, 0x1040683

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    goto/16 :goto_0

    .line 222
    :pswitch_1b
    const v3, 0x1040681

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    goto/16 :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public static getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "DrawableID"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 104
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 105
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 106
    .local v5, "resId":I
    const/4 v0, 0x0

    .line 107
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "mSystemUiResources":Landroid/content/res/Resources;
    :try_start_0
    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 114
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {v2, p1, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 117
    :cond_0
    if-lez v5, :cond_1

    .line 119
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 125
    .end local v2    # "mSystemUiResources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v0

    .line 120
    .restart local v2    # "mSystemUiResources":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_0
.end method
