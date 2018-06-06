.class public Landroid/widget/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmoothProgressDrawable$Builder;
    }
.end annotation


# static fields
.field private static final FRAME_DURATION:J = 0x10L

.field private static final OFFSET_PER_FRAME:F = 0.01f


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mColors:[I

.field private mColorsIndex:I

.field private mCurrentOffset:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxOffset:F

.field private mMirrorMode:Z

.field private mNewTurn:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mReversed:Z

.field private mRunning:Z

.field private mSectionsCount:I

.field private mSeparatorLength:I

.field private mSpeed:F

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFZZ)V
    .locals 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "sectionsCount"    # I
    .param p3, "separatorLength"    # I
    .param p4, "colors"    # [I
    .param p5, "strokeWidth"    # F
    .param p6, "speed"    # F
    .param p7, "reversed"    # Z
    .param p8, "mirrorMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 256
    new-instance v0, Landroid/widget/SmoothProgressDrawable$1;

    invoke-direct {v0, p0}, Landroid/widget/SmoothProgressDrawable$1;-><init>(Landroid/widget/SmoothProgressDrawable;)V

    iput-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 40
    iput-boolean v2, p0, Landroid/widget/SmoothProgressDrawable;->mRunning:Z

    .line 41
    iput-object p1, p0, Landroid/widget/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    iput p2, p0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    .line 43
    iput p3, p0, Landroid/widget/SmoothProgressDrawable;->mSeparatorLength:I

    .line 44
    iput p6, p0, Landroid/widget/SmoothProgressDrawable;->mSpeed:F

    .line 45
    iput-boolean p7, p0, Landroid/widget/SmoothProgressDrawable;->mReversed:Z

    .line 46
    iput-object p4, p0, Landroid/widget/SmoothProgressDrawable;->mColors:[I

    .line 47
    iput v2, p0, Landroid/widget/SmoothProgressDrawable;->mColorsIndex:I

    .line 48
    iput-boolean p8, p0, Landroid/widget/SmoothProgressDrawable;->mMirrorMode:Z

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/SmoothProgressDrawable;->mMaxOffset:F

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 56
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFZZLandroid/widget/SmoothProgressDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/animation/Interpolator;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [I
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Landroid/widget/SmoothProgressDrawable$1;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p8}, Landroid/widget/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFZZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;

    .prologue
    .line 19
    iget v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$016(Landroid/widget/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 19
    iget v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$024(Landroid/widget/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 19
    iget v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;

    .prologue
    .line 19
    iget v0, p0, Landroid/widget/SmoothProgressDrawable;->mSpeed:F

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;

    .prologue
    .line 19
    iget v0, p0, Landroid/widget/SmoothProgressDrawable;->mMaxOffset:F

    return v0
.end method

.method static synthetic access$302(Landroid/widget/SmoothProgressDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Landroid/widget/SmoothProgressDrawable;->mNewTurn:Z

    return p1
.end method

.method static synthetic access$400(Landroid/widget/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SmoothProgressDrawable;

    .prologue
    .line 19
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private decrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 209
    add-int/lit8 p1, p1, -0x1

    .line 210
    if-gez p1, :cond_0

    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 211
    :cond_0
    return p1
.end method

.method private drawLine(Landroid/graphics/Canvas;IFFFFI)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "canvasWidth"    # I
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "stopX"    # F
    .param p6, "stopY"    # F
    .param p7, "currentIndexColor"    # I

    .prologue
    .line 185
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable;->mColors:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mMirrorMode:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v5, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    return-void

    .line 190
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_1

    .line 191
    int-to-float v0, p2

    add-float v1, v0, p3

    int-to-float v0, p2

    add-float v3, v0, p5

    iget-object v5, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    int-to-float v0, p2

    sub-float v1, v0, p3

    int-to-float v0, p2

    sub-float v3, v0, p5

    iget-object v5, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v5, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v1, v0, p3

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v3, v0, p5

    iget-object v5, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawStrokes(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    const/4 v14, 0x0

    .line 138
    .local v14, "prevValue":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 139
    .local v3, "boundsWidth":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_0

    div-int/lit8 v3, v3, 0x2

    .line 140
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/SmoothProgressDrawable;->mSeparatorLength:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    add-int v18, v1, v2

    .line 141
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 142
    .local v9, "centerY":I
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v2, v2

    div-float v20, v1, v2

    .line 145
    .local v20, "xSectionWidth":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/SmoothProgressDrawable;->mNewTurn:Z

    if-eqz v1, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/SmoothProgressDrawable;->mColorsIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/widget/SmoothProgressDrawable;->decrementColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/SmoothProgressDrawable;->mColorsIndex:I

    .line 147
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/widget/SmoothProgressDrawable;->mNewTurn:Z

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/SmoothProgressDrawable;->mColorsIndex:I

    .line 159
    .local v8, "currentIndexColor":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    if-gt v12, v1, :cond_5

    .line 160
    int-to-float v1, v12

    mul-float v1, v1, v20

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    add-float v19, v1, v2

    .line 161
    .local v19, "xOffset":F
    const/4 v1, 0x0

    sub-float v2, v19, v20

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 162
    .local v13, "prev":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 165
    .local v15, "ratioSectionWidth":F
    move/from16 v0, v18

    int-to-float v1, v0

    mul-float/2addr v1, v15

    float-to-int v1, v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 167
    .local v16, "sectionWidth":F
    add-float v1, v16, v13

    move/from16 v0, v18

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v1, v1

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 172
    .local v17, "spaceLength":F
    :goto_1
    cmpl-float v1, v16, v17

    if-lez v1, :cond_4

    sub-float v10, v16, v17

    .line 173
    .local v10, "drawLength":F
    :goto_2
    add-float v11, v14, v10

    .line 174
    .local v11, "end":F
    cmpl-float v1, v11, v14

    if-lez v1, :cond_2

    .line 175
    int-to-float v1, v3

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v5, v9

    int-to-float v1, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/widget/SmoothProgressDrawable;->drawLine(Landroid/graphics/Canvas;IFFFFI)V

    .line 179
    :cond_2
    add-float v14, v11, v17

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/SmoothProgressDrawable;->incrementColor(I)I

    move-result v8

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 170
    .end local v10    # "drawLength":F
    .end local v11    # "end":F
    .end local v17    # "spaceLength":F
    :cond_3
    const/16 v17, 0x0

    .restart local v17    # "spaceLength":F
    goto :goto_1

    .line 172
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 182
    .end local v13    # "prev":F
    .end local v15    # "ratioSectionWidth":F
    .end local v16    # "sectionWidth":F
    .end local v17    # "spaceLength":F
    .end local v19    # "xOffset":F
    :cond_5
    return-void
.end method

.method private incrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 203
    add-int/lit8 p1, p1, 0x1

    .line 204
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 205
    :cond_0
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    .line 124
    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 126
    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 128
    .local v0, "boundsWidth":I
    iget-boolean v1, p0, Landroid/widget/SmoothProgressDrawable;->mReversed:Z

    if-eqz v1, :cond_0

    .line 129
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SmoothProgressDrawable;->drawStrokes(Landroid/graphics/Canvas;)V

    .line 134
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mRunning:Z

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mRunning:Z

    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 249
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 216
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/SmoothProgressDrawable;->setColors([I)V

    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 222
    return-void
.end method

.method public setColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 68
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SmoothProgressDrawable;->mColorsIndex:I

    .line 71
    iput-object p1, p0, Landroid/widget/SmoothProgressDrawable;->mColors:[I

    .line 72
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 73
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 62
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Landroid/widget/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 65
    return-void
.end method

.method public setMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mMirrorMode:Z

    if-ne v0, p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SmoothProgressDrawable;->mMirrorMode:Z

    .line 115
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mReversed:Z

    if-ne v0, p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SmoothProgressDrawable;->mReversed:Z

    .line 109
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setSectionsCount(I)V
    .locals 2
    .param p1, "sectionsCount"    # I

    .prologue
    .line 86
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/SmoothProgressDrawable;->mMaxOffset:F

    .line 89
    iget v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    iget v1, p0, Landroid/widget/SmoothProgressDrawable;->mMaxOffset:F

    rem-float/2addr v0, v1

    iput v0, p0, Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F

    .line 90
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 91
    return-void
.end method

.method public setSeparatorLength(I)V
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 94
    if-gez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable;->mSeparatorLength:I

    .line 97
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 98
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 80
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable;->mSpeed:F

    .line 82
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 83
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .prologue
    .line 101
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 104
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 235
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/widget/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SmoothProgressDrawable;->mRunning:Z

    .line 242
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
