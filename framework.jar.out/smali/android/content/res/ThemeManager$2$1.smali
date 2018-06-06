.class Landroid/content/res/ThemeManager$2$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ThemeManager$2;->onFinishedProcessing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/res/ThemeManager$2;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/res/ThemeManager$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Landroid/content/res/ThemeManager$2$1;->this$1:Landroid/content/res/ThemeManager$2;

    iput-object p2, p0, Landroid/content/res/ThemeManager$2$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    iget-object v2, p0, Landroid/content/res/ThemeManager$2$1;->this$1:Landroid/content/res/ThemeManager$2;

    iget-object v2, v2, Landroid/content/res/ThemeManager$2;->this$0:Landroid/content/res/ThemeManager;

    # getter for: Landroid/content/res/ThemeManager;->mProcessingListeners:Ljava/util/Set;
    invoke-static {v2}, Landroid/content/res/ThemeManager;->access$300(Landroid/content/res/ThemeManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/res/ThemeManager$ThemeProcessingListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ThemeManager$ThemeProcessingListener;

    iget-object v3, p0, Landroid/content/res/ThemeManager$2$1;->val$pkgName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/res/ThemeManager$ThemeProcessingListener;->onFinishedProcessing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Landroid/content/res/ThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/ThemeManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to update theme change progress"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
