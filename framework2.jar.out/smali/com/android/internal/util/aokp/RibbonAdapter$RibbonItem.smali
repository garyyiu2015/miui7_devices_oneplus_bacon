.class public Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;
.super Ljava/lang/Object;
.source "RibbonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/aokp/RibbonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RibbonItem"
.end annotation


# instance fields
.field public mIcon:Ljava/lang/String;

.field public mLongAction:Ljava/lang/String;

.field public mShortAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v1, "\\!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    .line 85
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mLongAction:Ljava/lang/String;

    .line 86
    array-length v1, v0

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mIcon:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "shortAction"    # Ljava/lang/String;
    .param p2, "longAction"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mLongAction:Ljava/lang/String;

    .line 75
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iput-object p3, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mIcon:Ljava/lang/String;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mIcon:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 92
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mShortAction:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 93
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mLongAction:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 94
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/util/aokp/RibbonAdapter$RibbonItem;->mIcon:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 95
    const-string v1, "!"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
