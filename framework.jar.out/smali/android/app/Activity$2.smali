.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->updateImmersiveMode(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$autoImmersive:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 5493
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iput-boolean p2, p0, Landroid/app/Activity$2;->val$autoImmersive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 5496
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "immersive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$AOKP;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Activity$2;->val$autoImmersive:Z

    if-eqz v0, :cond_1

    .line 5498
    :cond_0
    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mImmerseModeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5500
    :cond_1
    return-void
.end method
