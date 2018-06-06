.class public Lcom/android/internal/util/aokp/AokpRibbonHelper;
.super Ljava/lang/Object;
.source "AokpRibbonHelper.java"


# static fields
.field public static final AUTO_HIDE_DURATION:I = 0xa

.field public static final ENABLE_RIBBON:I = 0x0

.field public static final HANDLE_COLOR:I = 0x5

.field public static final HANDLE_HEIGHT:I = 0x4

.field public static final HANDLE_LOCATION:I = 0x7

.field public static final HANDLE_VIBRATE:I = 0x6

.field public static final HANDLE_WEIGHT:I = 0x3

.field public static final HORIZONTAL_RIBBON_ITEMS:I = 0x0

.field public static final HORIZONTAL_RIBBON_MARGIN:I = 0x2

.field public static final HORIZONTAL_RIBBON_SIZE:I = 0x1

.field public static final LONG_PRESS:I = 0x9

.field public static final LONG_SWIPE:I = 0x8

.field public static final PARAMS_GRID:Landroid/widget/LinearLayout$LayoutParams;

.field public static final PARAMS_TARGET:Landroid/widget/LinearLayout$LayoutParams;

.field public static final PARAMS_TARGET_SCROLL:Landroid/widget/LinearLayout$LayoutParams;

.field public static final PARAMS_TARGET_VERTICAL:Landroid/widget/LinearLayout$LayoutParams;

.field public static final RIBBON_ANIMATION_DURATION:I = 0xd

.field public static final RIBBON_ANIMATION_TYPE:I = 0xc

.field public static final RIBBON_COLOR:I = 0xb

.field public static final RIBBON_ICON_GRAVITY:I = 0xf

.field public static final RIBBON_ITEMS:I = 0x1

.field public static final RIBBON_MARGIN:I = 0xe

.field public static final RIBBON_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Aokp Ribbon"

.field public static final WINDOW_ANIMATION:I = 0x1

.field public static final WINDOW_ANIMATION_DURATION:I = 0x2

.field public static final WINDOW_COLOR:I = 0x0

.field public static final WINDOW_SIZE:I = 0x3

.field public static final WINDOW_SPACE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, -0x2

    .line 49
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/internal/util/aokp/AokpRibbonHelper;->PARAMS_TARGET:Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/internal/util/aokp/AokpRibbonHelper;->PARAMS_TARGET_VERTICAL:Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/internal/util/aokp/AokpRibbonHelper;->PARAMS_TARGET_SCROLL:Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/internal/util/aokp/AokpRibbonHelper;->PARAMS_GRID:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
