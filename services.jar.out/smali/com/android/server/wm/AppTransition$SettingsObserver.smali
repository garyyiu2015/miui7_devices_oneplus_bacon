.class Lcom/android/server/wm/AppTransition$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    .line 881
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 882
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 884
    iget-object v2, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 885
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "animation_controls_duration"

    invoke-static {v2}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 887
    const-string v2, "animation_controls_no_override"

    invoke-static {v2}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 889
    const-string v2, "animation_controls_exit_only"

    invoke-static {v2}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 891
    const-string v2, "animation_controls_reverse_exit"

    invoke-static {v2}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 894
    sget-object v2, Landroid/provider/Settings$AOKP;->ACTIVITY_ANIMATION_CONTROLS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/provider/Settings$AOKP;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$SettingsObserver;->this$0:Lcom/android/server/wm/AppTransition;

    # invokes: Lcom/android/server/wm/AppTransition;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->access$100(Lcom/android/server/wm/AppTransition;)V

    .line 901
    return-void
.end method
