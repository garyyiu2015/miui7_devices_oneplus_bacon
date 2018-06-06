.class Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationBroadcastReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1811
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1814
    new-instance v0, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever$1;-><init>(Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1822
    return-void
.end method
