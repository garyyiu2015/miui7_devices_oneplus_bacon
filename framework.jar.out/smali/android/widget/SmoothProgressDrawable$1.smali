.class Landroid/widget/SmoothProgressDrawable$1;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SmoothProgressDrawable;


# direct methods
.method constructor <init>(Landroid/widget/SmoothProgressDrawable;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 260
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    const v1, 0x3c23d70a    # 0.01f

    iget-object v2, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    # getter for: Landroid/widget/SmoothProgressDrawable;->mSpeed:F
    invoke-static {v2}, Landroid/widget/SmoothProgressDrawable;->access$100(Landroid/widget/SmoothProgressDrawable;)F

    move-result v2

    mul-float/2addr v1, v2

    # += operator for: Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F
    invoke-static {v0, v1}, Landroid/widget/SmoothProgressDrawable;->access$016(Landroid/widget/SmoothProgressDrawable;F)F

    .line 261
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    # getter for: Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F
    invoke-static {v0}, Landroid/widget/SmoothProgressDrawable;->access$000(Landroid/widget/SmoothProgressDrawable;)F

    move-result v0

    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    # getter for: Landroid/widget/SmoothProgressDrawable;->mMaxOffset:F
    invoke-static {v1}, Landroid/widget/SmoothProgressDrawable;->access$200(Landroid/widget/SmoothProgressDrawable;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    const/4 v1, 0x1

    # setter for: Landroid/widget/SmoothProgressDrawable;->mNewTurn:Z
    invoke-static {v0, v1}, Landroid/widget/SmoothProgressDrawable;->access$302(Landroid/widget/SmoothProgressDrawable;Z)Z

    .line 263
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    # getter for: Landroid/widget/SmoothProgressDrawable;->mMaxOffset:F
    invoke-static {v1}, Landroid/widget/SmoothProgressDrawable;->access$200(Landroid/widget/SmoothProgressDrawable;)F

    move-result v1

    # -= operator for: Landroid/widget/SmoothProgressDrawable;->mCurrentOffset:F
    invoke-static {v0, v1}, Landroid/widget/SmoothProgressDrawable;->access$024(Landroid/widget/SmoothProgressDrawable;F)F

    .line 265
    :cond_0
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    iget-object v1, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    # getter for: Landroid/widget/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/widget/SmoothProgressDrawable;->access$400(Landroid/widget/SmoothProgressDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 266
    iget-object v0, p0, Landroid/widget/SmoothProgressDrawable$1;->this$0:Landroid/widget/SmoothProgressDrawable;

    invoke-virtual {v0}, Landroid/widget/SmoothProgressDrawable;->invalidateSelf()V

    .line 267
    return-void
.end method
