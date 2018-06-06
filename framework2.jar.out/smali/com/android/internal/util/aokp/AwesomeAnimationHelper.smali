.class public Lcom/android/internal/util/aokp/AwesomeAnimationHelper;
.super Ljava/lang/Object;
.source "AwesomeAnimationHelper.java"


# static fields
.field public static final ANIMATION_DEFAULT:I = 0x0

.field public static final ANIMATION_FADE:I = 0x1

.field public static final ANIMATION_GROW_SHRINK:I = 0x9

.field public static final ANIMATION_GROW_SHRINK_BOTTOM:I = 0xb

.field public static final ANIMATION_GROW_SHRINK_CENTER:I = 0xa

.field public static final ANIMATION_GROW_SHRINK_LEFT:I = 0xc

.field public static final ANIMATION_GROW_SHRINK_RIGHT:I = 0xd

.field public static final ANIMATION_SLIDE_DOWN:I = 0x7

.field public static final ANIMATION_SLIDE_LEFT:I = 0x3

.field public static final ANIMATION_SLIDE_LEFT_NO_FADE:I = 0x5

.field public static final ANIMATION_SLIDE_RIGHT:I = 0x2

.field public static final ANIMATION_SLIDE_RIGHT_NO_FADE:I = 0x4

.field public static final ANIMATION_SLIDE_UP:I = 0x6

.field public static final ANIMATION_TRANSLUCENT:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimations(I)[I
    .locals 1
    .param p0, "mAnim"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getAnimations(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimations(IZ)[I
    .locals 4
    .param p0, "mAnim"    # I
    .param p1, "enterOnly"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 71
    .local v0, "anim":[I
    packed-switch p0, :pswitch_data_0

    .line 125
    :goto_0
    if-eqz p1, :cond_0

    aput v2, v0, v2

    .line 126
    :cond_0
    return-object v0

    .line 73
    :pswitch_0
    const v1, 0x10a0072

    aput v1, v0, v2

    .line 74
    const v1, 0x10a0071

    aput v1, v0, v3

    goto :goto_0

    .line 77
    :pswitch_1
    const v1, 0x10a006f

    aput v1, v0, v2

    .line 78
    const v1, 0x10a0066

    aput v1, v0, v3

    goto :goto_0

    .line 81
    :pswitch_2
    const v1, 0x10a006d

    aput v1, v0, v2

    .line 82
    const v1, 0x10a0063

    aput v1, v0, v3

    goto :goto_0

    .line 85
    :pswitch_3
    const v1, 0x10a006a

    aput v1, v0, v2

    .line 86
    const v1, 0x10a0068

    aput v1, v0, v3

    goto :goto_0

    .line 89
    :pswitch_4
    const v1, 0x10a0070

    aput v1, v0, v2

    .line 90
    const v1, 0x10a0061

    aput v1, v0, v3

    goto :goto_0

    .line 93
    :pswitch_5
    const v1, 0x10a006e

    aput v1, v0, v2

    .line 94
    const v1, 0x10a0065

    aput v1, v0, v3

    goto :goto_0

    .line 97
    :pswitch_6
    const v1, 0x10a006c

    aput v1, v0, v2

    .line 98
    const v1, 0x10a0062

    aput v1, v0, v3

    goto :goto_0

    .line 101
    :pswitch_7
    const v1, 0x10a0083

    aput v1, v0, v2

    .line 102
    const v1, 0x10a0080

    aput v1, v0, v3

    goto :goto_0

    .line 105
    :pswitch_8
    const v1, 0x10a005e

    aput v1, v0, v2

    .line 106
    const v1, 0x10a0024

    aput v1, v0, v3

    goto :goto_0

    .line 109
    :pswitch_9
    const v1, 0x10a005a

    aput v1, v0, v2

    .line 110
    const v1, 0x10a0020

    aput v1, v0, v3

    goto :goto_0

    .line 113
    :pswitch_a
    const v1, 0x10a005d

    aput v1, v0, v2

    .line 114
    const v1, 0x10a0023

    aput v1, v0, v3

    goto :goto_0

    .line 117
    :pswitch_b
    const v1, 0x10a005f

    aput v1, v0, v2

    .line 118
    const v1, 0x10a0025

    aput v1, v0, v3

    goto/16 :goto_0

    .line 121
    :pswitch_c
    const v1, 0x10a005c

    aput v1, v0, v2

    .line 122
    const v1, 0x10a0022

    aput v1, v0, v3

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getAnimationsList()[I
    .locals 5

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "animList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 58
    .local v3, "length":I
    new-array v0, v3, [I

    .line 59
    .local v0, "anim":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-object v0
.end method

.method public static getProperName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAnim"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, ""

    .line 192
    .local v1, "value":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 236
    const v2, 0x104067d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    .line 194
    :pswitch_0
    const v2, 0x104068e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    goto :goto_0

    .line 197
    :pswitch_1
    const v2, 0x1040687

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    goto :goto_0

    .line 200
    :pswitch_2
    const v2, 0x1040688

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    goto :goto_0

    .line 203
    :pswitch_3
    const v2, 0x104068a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    goto :goto_0

    .line 206
    :pswitch_4
    const v2, 0x1040689

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    goto :goto_0

    .line 209
    :pswitch_5
    const v2, 0x104068c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    goto :goto_0

    .line 212
    :pswitch_6
    const v2, 0x104068d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    goto :goto_0

    .line 215
    :pswitch_7
    const v2, 0x104068b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    goto :goto_0

    .line 218
    :pswitch_8
    const v2, 0x104068f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    goto :goto_0

    .line 221
    :pswitch_9
    const v2, 0x1040692

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    goto :goto_0

    .line 224
    :pswitch_a
    const v2, 0x1040691

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    goto :goto_0

    .line 227
    :pswitch_b
    const v2, 0x1040693

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    goto :goto_0

    .line 230
    :pswitch_c
    const v2, 0x1040694

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    goto :goto_0

    .line 233
    :pswitch_d
    const v2, 0x1040690

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getSystemAnimations(IZZ)[I
    .locals 7
    .param p0, "mAnim"    # I
    .param p1, "enterOnly"    # Z
    .param p2, "reverseExit"    # Z

    .prologue
    const v3, 0x10a005d

    const v1, 0x10a005c

    const v2, 0x10a0032

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 131
    .local v0, "anim":[I
    packed-switch p0, :pswitch_data_0

    .line 185
    :goto_0
    if-eqz p1, :cond_0

    aput v2, v0, v5

    .line 186
    :cond_0
    return-object v0

    .line 133
    :pswitch_0
    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    aput v1, v0, v5

    .line 134
    const v1, 0x10a0071

    aput v1, v0, v6

    goto :goto_0

    .line 133
    :cond_1
    const v1, 0x10a0072

    goto :goto_1

    .line 137
    :pswitch_1
    if-eqz p2, :cond_2

    const v1, 0x10a006d

    :goto_2
    aput v1, v0, v5

    .line 138
    const v1, 0x10a0066

    aput v1, v0, v6

    goto :goto_0

    .line 137
    :cond_2
    const v1, 0x10a006f

    goto :goto_2

    .line 141
    :pswitch_2
    if-eqz p2, :cond_3

    const v1, 0x10a006f

    :goto_3
    aput v1, v0, v5

    .line 142
    const v1, 0x10a0063

    aput v1, v0, v6

    goto :goto_0

    .line 141
    :cond_3
    const v1, 0x10a006d

    goto :goto_3

    .line 145
    :pswitch_3
    if-eqz p2, :cond_4

    const v1, 0x10a0070

    :goto_4
    aput v1, v0, v5

    .line 146
    const v1, 0x10a0068

    aput v1, v0, v6

    goto :goto_0

    .line 145
    :cond_4
    const v1, 0x10a006a

    goto :goto_4

    .line 149
    :pswitch_4
    if-eqz p2, :cond_5

    const v1, 0x10a006a

    :goto_5
    aput v1, v0, v5

    .line 150
    const v1, 0x10a0061

    aput v1, v0, v6

    goto :goto_0

    .line 149
    :cond_5
    const v1, 0x10a0070

    goto :goto_5

    .line 153
    :pswitch_5
    if-eqz p2, :cond_6

    const v1, 0x10a006c

    :goto_6
    aput v1, v0, v5

    .line 154
    const v1, 0x10a0065

    aput v1, v0, v6

    goto :goto_0

    .line 153
    :cond_6
    const v1, 0x10a006e

    goto :goto_6

    .line 157
    :pswitch_6
    if-eqz p2, :cond_7

    const v1, 0x10a006e

    :goto_7
    aput v1, v0, v5

    .line 158
    const v1, 0x10a0062

    aput v1, v0, v6

    goto :goto_0

    .line 157
    :cond_7
    const v1, 0x10a006c

    goto :goto_7

    .line 161
    :pswitch_7
    if-eqz p2, :cond_8

    const v1, 0x10a0082

    :goto_8
    aput v1, v0, v5

    .line 162
    const v1, 0x10a0080

    aput v1, v0, v6

    goto/16 :goto_0

    .line 161
    :cond_8
    const v1, 0x10a0083

    goto :goto_8

    .line 165
    :pswitch_8
    if-eqz p2, :cond_9

    :goto_9
    aput v1, v0, v5

    .line 166
    const v1, 0x10a0024

    aput v1, v0, v6

    goto/16 :goto_0

    .line 165
    :cond_9
    const v1, 0x10a005e

    goto :goto_9

    .line 169
    :pswitch_9
    if-eqz p2, :cond_a

    move v1, v2

    :goto_a
    aput v1, v0, v5

    .line 170
    const v1, 0x10a0020

    aput v1, v0, v6

    goto/16 :goto_0

    .line 169
    :cond_a
    const v1, 0x10a005a

    goto :goto_a

    .line 173
    :pswitch_a
    if-eqz p2, :cond_b

    const v1, 0x10a005f

    :goto_b
    aput v1, v0, v5

    .line 174
    const v1, 0x10a0023

    aput v1, v0, v6

    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 173
    goto :goto_b

    .line 177
    :pswitch_b
    if-eqz p2, :cond_c

    :goto_c
    aput v3, v0, v5

    .line 178
    const v1, 0x10a0025

    aput v1, v0, v6

    goto/16 :goto_0

    .line 177
    :cond_c
    const v3, 0x10a005f

    goto :goto_c

    .line 181
    :pswitch_c
    if-eqz p2, :cond_d

    const v1, 0x10a005e

    :cond_d
    aput v1, v0, v5

    .line 182
    const v1, 0x10a0022

    aput v1, v0, v6

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
