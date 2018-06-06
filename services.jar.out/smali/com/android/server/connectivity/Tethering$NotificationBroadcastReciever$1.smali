.class Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;)V
    .locals 0

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever$1;->this$1:Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1816
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever$1;->this$1:Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$NotificationBroadcastReciever;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$5600(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1818
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1819
    return-void
.end method
