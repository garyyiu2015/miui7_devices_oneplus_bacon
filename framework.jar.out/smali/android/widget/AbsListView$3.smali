.class Landroid/widget/AbsListView$3;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 3537
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3539
    iget-object v1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsTap:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/AbsListView;->mIsTap:Z
    invoke-static {v1, v0}, Landroid/widget/AbsListView;->access$902(Landroid/widget/AbsListView;Z)Z

    .line 3540
    return-void

    .line 3539
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
