.class public Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "BackgroundAlphaColorDrawable.java"


# instance fields
.field mAlpha:I

.field mBgColor:I

.field mComputedDrawColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 13
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mAlpha:I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mComputedDrawColor:I

    .line 17
    iput p1, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mBgColor:I

    invoke-virtual {p0, p1}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->setBgColor(I)V

    .line 18
    invoke-direct {p0}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->updateColor()V

    .line 19
    return-void
.end method

.method public static applyAlphaToColor(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 84
    invoke-static {p1}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->floatAlphaToInt(F)I

    move-result v0

    .line 85
    .local v0, "a":I
    invoke-static {p0, v0}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->applyAlphaToColor(II)I

    move-result v1

    return v1
.end method

.method public static applyAlphaToColor(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 89
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 90
    .local v2, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 91
    .local v1, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 92
    .local v0, "b":I
    invoke-static {p1, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static floatAlphaToInt(F)I
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 80
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private updateColor()V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mBgColor:I

    iget v1, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->applyAlphaToColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mComputedDrawColor:I

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->invalidateSelf()V

    .line 63
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mComputedDrawColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mAlpha:I

    return v0
.end method

.method public getBgColor()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mBgColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mComputedDrawColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 42
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 43
    const/16 p1, 0xff

    .line 47
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mAlpha:I

    .line 48
    invoke-direct {p0}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->updateColor()V

    .line 49
    return-void

    .line 44
    :cond_1
    if-gez p1, :cond_0

    .line 45
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 22
    if-gez p1, :cond_0

    .line 23
    const/high16 p1, -0x1000000

    .line 25
    :cond_0
    iput p1, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mBgColor:I

    .line 26
    invoke-direct {p0}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->updateColor()V

    .line 27
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mBgColor:I

    iput p1, p0, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->mComputedDrawColor:I

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->invalidateSelf()V

    .line 33
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 72
    return-void
.end method
