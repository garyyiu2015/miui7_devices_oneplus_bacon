.class public Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;
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
    name = "KeyDown"
.end annotation


# instance fields
.field private mInjectKeyCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "keycode"    # I

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;->mInjectKeyCode:I

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 287
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v6, p0, Lcom/android/internal/util/aokp/AwesomeAction$KeyDown;->mInjectKeyCode:I

    const/4 v9, -0x1

    const/16 v11, 0xc

    const/16 v12, 0x101

    move v7, v5

    move v8, v5

    move v10, v5

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 292
    .local v0, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 294
    return-void
.end method
