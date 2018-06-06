.class public Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;
.super Ljava/lang/Object;
.source "AwesomeAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/aokp/AwesomeAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyUp"
.end annotation


# instance fields
.field private mInjectKeyCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "keycode"    # I

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p1, p0, Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;->mInjectKeyCode:I

    .line 302
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 305
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/internal/util/aokp/AwesomeAction$KeyUp;->mInjectKeyCode:I

    const/4 v9, -0x1

    const/16 v11, 0xc

    const/16 v12, 0x101

    move v8, v7

    move v10, v7

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 310
    .local v0, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 312
    return-void
.end method
