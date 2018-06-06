.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private switchState:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V
    .locals 0
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "state1Bits"    # I
    .param p4, "state2Bits"    # I

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 406
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 407
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 408
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public computeNewHeadsetState(Ljava/lang/String;I)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 427
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v4, "usb_audio"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$700()I

    move-result v4

    and-int/lit8 v4, v4, 0x13

    if-ne p2, v2, :cond_0

    :goto_0
    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    .line 457
    :goto_1
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState switchState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    return v0

    .line 429
    :cond_0
    if-ne p2, v3, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 432
    :cond_2
    const-string v4, "dock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 433
    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$700()I

    move-result v4

    and-int/lit8 v4, v4, 0x13

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    or-int v0, v4, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    .line 443
    :cond_5
    const-string v0, "hdmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 444
    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$700()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-ne p2, v2, :cond_6

    const/16 v1, 0x10

    :cond_6
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    .line 447
    :cond_7
    const-string v0, "Headset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$700()I

    move-result v0

    and-int/lit8 v0, v0, 0x1c

    and-int/lit8 v1, p2, 0x3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    .line 452
    :cond_8
    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$700()I

    move-result v0

    and-int/lit8 v0, v0, 0x1c

    if-ne p2, v2, :cond_a

    move v1, v2

    :cond_9
    :goto_2
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    :cond_a
    if-ne p2, v3, :cond_9

    move v1, v3

    goto :goto_2
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 413
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/devices/virtual/switch/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/sys/class/switch/%s/state"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
