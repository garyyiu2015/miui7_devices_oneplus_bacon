.class public Landroid/widget/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# static fields
.field private static final INTERPOLATOR_ACCELERATE:I = 0x0

.field private static final INTERPOLATOR_ACCELERATEDECELERATE:I = 0x2

.field private static final INTERPOLATOR_DECELERATE:I = 0x3

.field private static final INTERPOLATOR_LINEAR:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const v0, 0x101047e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 38
    .local v13, "res":Landroid/content/res/Resources;
    sget-object v19, Lcom/android/internal/R$styleable;->SmoothProgressBar:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 41
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0x1

    const v20, 0x1060074

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 42
    .local v7, "color":I
    const/16 v19, 0x4

    const v20, 0x10e004f

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 43
    .local v15, "sectionsCount":I
    const/16 v19, 0x3

    const v20, 0x105000b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 44
    .local v16, "separatorLength":I
    const/16 v19, 0x2

    const v20, 0x105000c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 45
    .local v18, "strokeWidth":F
    const/16 v19, 0x5

    const v20, 0x1040040

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .line 46
    .local v17, "speed":F
    const/16 v19, 0x6

    const v20, 0x10e0050

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    .line 47
    .local v10, "iInterpolator":I
    const/16 v19, 0x7

    const v20, 0x1110065

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 48
    .local v14, "reversed":Z
    const/16 v19, 0x8

    const v20, 0x1110066

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 49
    .local v12, "mirrorMode":Z
    const/16 v19, 0x9

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 50
    .local v9, "colorsId":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    packed-switch v10, :pswitch_data_0

    .line 66
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 69
    .local v11, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    const/4 v8, 0x0

    .line 71
    .local v8, "colors":[I
    if-eqz v9, :cond_0

    .line 72
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 75
    :cond_0
    new-instance v19, Landroid/widget/SmoothProgressDrawable$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SmoothProgressDrawable$Builder;->speed(F)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/SmoothProgressDrawable$Builder;->sectionsCount(I)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SmoothProgressDrawable$Builder;->separatorLength(I)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SmoothProgressDrawable$Builder;->strokeWidth(F)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/SmoothProgressDrawable$Builder;->reversed(Z)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/SmoothProgressDrawable$Builder;->mirrorMode(Z)Landroid/widget/SmoothProgressDrawable$Builder;

    move-result-object v6

    .line 84
    .local v6, "builder":Landroid/widget/SmoothProgressDrawable$Builder;
    if-eqz v8, :cond_1

    array-length v0, v8

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 85
    invoke-virtual {v6, v8}, Landroid/widget/SmoothProgressDrawable$Builder;->colors([I)Landroid/widget/SmoothProgressDrawable$Builder;

    .line 89
    :goto_1
    invoke-virtual {v6}, Landroid/widget/SmoothProgressDrawable$Builder;->build()Landroid/widget/SmoothProgressDrawable;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void

    .line 56
    .end local v6    # "builder":Landroid/widget/SmoothProgressDrawable$Builder;
    .end local v8    # "colors":[I
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_0
    new-instance v11, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 57
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 59
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 60
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 62
    .end local v11    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 63
    .restart local v11    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 87
    .restart local v6    # "builder":Landroid/widget/SmoothProgressDrawable$Builder;
    .restart local v8    # "colors":[I
    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/SmoothProgressDrawable$Builder;->color(I)Landroid/widget/SmoothProgressDrawable$Builder;

    goto :goto_1

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/widget/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/SmoothProgressDrawable;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    check-cast v0, Landroid/widget/SmoothProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 13
    .param p1, "styleResId"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/widget/SmoothProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->SmoothProgressBar:[I

    invoke-virtual {v5, v6, v7, v8, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableColor(I)V

    .line 98
    :cond_0
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 100
    .local v2, "colorsId":I
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p0}, Landroid/widget/SmoothProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 102
    .local v1, "colors":[I
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableColors([I)V

    .line 106
    .end local v1    # "colors":[I
    .end local v2    # "colorsId":I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableSectionsCount(I)V

    .line 109
    :cond_2
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    invoke-virtual {v0, v12, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableSeparatorLength(I)V

    .line 112
    :cond_3
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableStrokeWidth(F)V

    .line 115
    :cond_4
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableSpeed(F)V

    .line 118
    :cond_5
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 119
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableReversed(Z)V

    .line 121
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 122
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/SmoothProgressBar;->setSmoothProgressDrawableMirrorMode(Z)V

    .line 124
    :cond_7
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 125
    const/4 v5, 0x6

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 127
    .local v3, "iInterpolator":I
    packed-switch v3, :pswitch_data_0

    .line 141
    const/4 v4, 0x0

    .line 143
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    if-eqz v4, :cond_8

    .line 144
    invoke-virtual {p0, v4}, Landroid/widget/SmoothProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    .end local v3    # "iInterpolator":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void

    .line 129
    .restart local v3    # "iInterpolator":I
    :pswitch_0
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 130
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 132
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 133
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 135
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 136
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 138
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_3
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 139
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 160
    invoke-virtual {p0}, Landroid/widget/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Landroid/widget/SmoothProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    :cond_0
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setColor(I)V

    .line 175
    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setColors([I)V

    .line 171
    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 167
    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setMirrorMode(Z)V

    .line 199
    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setReversed(Z)V

    .line 195
    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1
    .param p1, "sectionsCount"    # I

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setSectionsCount(I)V

    .line 183
    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1
    .param p1, "separatorLength"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setSeparatorLength(I)V

    .line 187
    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setSpeed(F)V

    .line 179
    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/widget/SmoothProgressBar;->checkIndeterminateDrawable()Landroid/widget/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SmoothProgressDrawable;->setStrokeWidth(F)V

    .line 191
    return-void
.end method
