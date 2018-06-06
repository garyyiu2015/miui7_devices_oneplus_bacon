.class public Landroid/widget/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColors:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-direct {p0, p1}, Landroid/widget/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 299
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 300
    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 301
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1060074

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mColors:[I

    .line 302
    const v1, 0x1040040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 303
    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 305
    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 306
    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 307
    return-void
.end method


# virtual methods
.method public build()Landroid/widget/SmoothProgressDrawable;
    .locals 10

    .prologue
    .line 293
    new-instance v0, Landroid/widget/SmoothProgressDrawable;

    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mSectionsCount:I

    iget v3, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    iget-object v4, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mColors:[I

    iget v5, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    iget v6, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mSpeed:F

    iget-boolean v7, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mReversed:Z

    iget-boolean v8, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/widget/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFZZLandroid/widget/SmoothProgressDrawable$1;)V

    .line 294
    .local v0, "ret":Landroid/widget/SmoothProgressDrawable;
    return-object v0
.end method

.method public color(I)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 330
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mColors:[I

    .line 331
    return-object p0
.end method

.method public colors([I)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 335
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your color array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    iput-object p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mColors:[I

    .line 338
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iput-object p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 313
    return-object p0
.end method

.method public mirrorMode(Z)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 360
    return-object p0
.end method

.method public reversed(Z)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 355
    return-object p0
.end method

.method public sectionsCount(I)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "sectionsCount"    # I

    .prologue
    .line 317
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 319
    return-object p0
.end method

.method public separatorLength(I)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 323
    if-gez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 326
    return-object p0
.end method

.method public speed(F)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 348
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 350
    return-object p0
.end method

.method public strokeWidth(F)Landroid/widget/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 342
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iput p1, p0, Landroid/widget/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 344
    return-object p0
.end method
