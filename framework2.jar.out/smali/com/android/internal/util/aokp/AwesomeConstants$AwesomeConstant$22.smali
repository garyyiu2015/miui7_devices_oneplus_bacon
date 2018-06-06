.class final enum Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant$22;
.super Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
.source "AwesomeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;-><init>(Ljava/lang/String;ILcom/android/internal/util/aokp/AwesomeConstants$1;)V

    return-void
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "**today**"

    return-object v0
.end method
