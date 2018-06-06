.class public Lcom/android/internal/util/aokp/NavRingHelpers;
.super Ljava/lang/Object;
.source "NavRingHelpers.java"


# static fields
.field private static final EXCLUDED_FROM_NAVRING:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x8

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

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_EVENT:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_TODAY:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_WIDGETS:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_RECENTS_GB:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_ALARM:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/util/aokp/NavRingHelpers;->EXCLUDED_FROM_NAVRING:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 206
    .local v14, "res":Landroid/content/res/Resources;
    new-instance v10, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v10, "f":Ljava/io/File;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/aokp/NavRingHelpers;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v9, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 210
    .local v9, "activityIcon":Landroid/graphics/drawable/Drawable;
    const v1, 0x108036c

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 212
    .local v12, "iconBg":Landroid/graphics/drawable/Drawable;
    const v1, 0x108036d

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 215
    .local v13, "iconBgActivated":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v2, v1, 0x3

    .line 216
    .local v2, "margin":I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v12, v1, v3

    const/4 v3, 0x1

    aput-object v9, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 219
    .local v0, "icon":Landroid/graphics/drawable/LayerDrawable;
    new-instance v11, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v13, v1, v3

    const/4 v3, 0x1

    aput-object v9, v1, v3

    invoke-direct {v11, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 223
    .local v11, "iconActivated":Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 224
    const/4 v4, 0x1

    move-object v3, v11

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 226
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 227
    .local v15, "selector":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v15, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 232
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v15, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 237
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-virtual {v15, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 242
    new-instance v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v1, v14, v15}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    .line 227
    :array_0
    .array-data 4
        0x101009e
        -0x10100a2
        -0x101009c
    .end array-data

    .line 232
    :array_1
    .array-data 4
        0x101009e
        0x10100a2
        -0x101009c
    .end array-data

    .line 237
    :array_2
    .array-data 4
        0x101009e
        -0x10100a2
        0x101009c
    .end array-data
.end method

.method public static getNavRingActions()[Ljava/lang/String;
    .locals 11

    .prologue
    .line 83
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v5, "mActionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeConstants;->AwesomeActions()[Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "mActionStart":[Ljava/lang/String;
    array-length v8, v6

    .line 86
    .local v8, "startLength":I
    sget-object v9, Lcom/android/internal/util/aokp/NavRingHelpers;->EXCLUDED_FROM_NAVRING:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    array-length v1, v9

    .line 87
    .local v1, "excludeLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_3

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "itemFound":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 90
    aget-object v9, v6, v2

    sget-object v10, Lcom/android/internal/util/aokp/NavRingHelpers;->EXCLUDED_FROM_NAVRING:[Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 89
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    :cond_1
    if-nez v3, :cond_2

    .line 95
    aget-object v9, v6, v2

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "itemFound":Z
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, "actionSize":I
    new-array v7, v0, [Ljava/lang/String;

    .line 100
    .local v7, "mActions":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 101
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    :cond_4
    return-object v7
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 248
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 250
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 251
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 254
    .local v5, "rectF":Landroid/graphics/RectF;
    const/high16 v6, 0x41c00000    # 24.0f

    .line 255
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 257
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 260
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    return-object v2
.end method

.method public static getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 107
    const/16 v27, -0x1

    .line 108
    .local v27, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 110
    .local v26, "res":Landroid/content/res/Resources;
    new-instance v24, Landroid/util/DisplayMetrics;

    invoke-direct/range {v24 .. v24}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v24, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/WindowManager;

    .line 112
    .local v30, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    new-instance v17, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v4, 0x108029c

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 117
    .local v17, "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 200
    .end local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_0
    return-object v17

    .line 121
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->fromString(Ljava/lang/String;)Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    move-result-object v12

    .line 122
    .local v12, "IconEnum":Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    sget-object v4, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v12, v4}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    new-instance v17, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v4, 0x108029c

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 125
    .restart local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    goto :goto_0

    .line 127
    .end local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    sget-object v4, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_ASSIST:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v12, v4}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    new-instance v17, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v4, 0x1080299

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 130
    .restart local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    goto :goto_0

    .line 131
    .end local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_2
    sget-object v4, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_APP:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v12, v4}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v23

    .line 135
    .local v23, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 136
    .local v25, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    .line 138
    .local v22, "info":Landroid/content/pm/ActivityInfo;
    if-nez v22, :cond_3

    .line 139
    new-instance v17, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v4, 0x108029c

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 141
    .restart local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v22    # "info":Landroid/content/pm/ActivityInfo;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v18

    .line 161
    .local v18, "e":Ljava/net/URISyntaxException;
    new-instance v17, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const v4, 0x108029c

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 163
    .restart local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    goto :goto_0

    .line 145
    .end local v17    # "drawable":Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v18    # "e":Ljava/net/URISyntaxException;
    .restart local v22    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 147
    .local v13, "activityIcon":Landroid/graphics/drawable/Drawable;
    const/high16 v4, 0x42400000    # 48.0f

    move-object/from16 v0, v24

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    .line 148
    .local v16, "desiredSize":I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    .line 150
    .local v29, "width":I
    move/from16 v0, v29

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    .line 152
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 153
    .local v15, "bm":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_4

    .line 154
    const/4 v4, 0x0

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 156
    .local v14, "bitmapOrig":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "activityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v26

    invoke-direct {v13, v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    .end local v14    # "bitmapOrig":Landroid/graphics/Bitmap;
    .end local v15    # "bm":Landroid/graphics/Bitmap;
    .end local v16    # "desiredSize":I
    .end local v22    # "info":Landroid/content/pm/ActivityInfo;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "width":I
    .restart local v13    # "activityIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    const v4, 0x108036c

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 171
    .local v20, "iconBg":Landroid/graphics/drawable/Drawable;
    const v4, 0x108036d

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 173
    .local v21, "iconBgActivated":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v5, v4, 0x3

    .line 174
    .local v5, "margin":I
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v20, v4, v6

    const/4 v6, 0x1

    aput-object v13, v4, v6

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 177
    .local v3, "icon":Landroid/graphics/drawable/LayerDrawable;
    new-instance v19, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v21, v4, v6

    const/4 v6, 0x1

    aput-object v13, v4, v6

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 181
    .local v19, "iconActivated":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x1

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 182
    const/4 v7, 0x1

    move-object/from16 v6, v19

    move v8, v5

    move v9, v5

    move v10, v5

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 184
    new-instance v28, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 185
    .local v28, "selector":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 190
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 195
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v17, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 167
    .end local v3    # "icon":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "margin":I
    .end local v13    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "iconActivated":Landroid/graphics/drawable/LayerDrawable;
    .end local v20    # "iconBg":Landroid/graphics/drawable/Drawable;
    .end local v21    # "iconBgActivated":Landroid/graphics/drawable/Drawable;
    .end local v28    # "selector":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    invoke-static/range {p0 .. p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .restart local v13    # "activityIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 185
    :array_0
    .array-data 4
        0x101009e
        -0x10100a2
        -0x101009c
    .end array-data

    .line 190
    :array_1
    .array-data 4
        0x101009e
        0x10100a2
        -0x101009c
    .end array-data

    .line 195
    :array_2
    .array-data 4
        0x101009e
        -0x10100a2
        0x101009c
    .end array-data
.end method

.method public static isScreenLarge(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
