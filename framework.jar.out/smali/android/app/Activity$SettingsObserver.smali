.class Landroid/app/Activity$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5472
    iput-object p1, p0, Landroid/app/Activity$SettingsObserver;->this$0:Landroid/app/Activity;

    .line 5473
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5474
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 5476
    iget-object v0, p0, Landroid/app/Activity$SettingsObserver;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "immersive_mode"

    invoke-static {v1}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5478
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 5481
    iget-object v0, p0, Landroid/app/Activity$SettingsObserver;->this$0:Landroid/app/Activity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->updateImmersiveMode(ZZ)V

    .line 5482
    return-void
.end method
