.class Lcom/android/server/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 155
    .local v3, "result":I
    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    const/4 v4, 0x1

    .line 159
    :cond_0
    if-eqz v2, :cond_1

    .line 161
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    move-object v1, v2

    .line 163
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "result":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return v4

    .line 156
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_2

    .line 161
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v5

    goto :goto_1

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_3

    .line 161
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 163
    :cond_3
    :goto_4
    throw v4

    .line 162
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "result":I
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "result":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 159
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 156
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public setFlashlightEnabled(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 169
    iget-object v3, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.FLASHLIGHT"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.HARDWARE_TEST"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_0
    const/4 v1, 0x0

    .line 177
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x2

    :try_start_1
    new-array v0, v3, [B

    .line 179
    .local v0, "bytes":[B
    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/16 v3, 0x31

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 180
    const/4 v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    .line 181
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    if-eqz v2, :cond_4

    .line 187
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 192
    .end local v0    # "bytes":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 179
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bytes":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    const/16 v3, 0x30

    goto :goto_0

    .line 188
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 189
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 182
    .end local v0    # "bytes":[B
    :catch_1
    move-exception v3

    .line 185
    :goto_2
    if-eqz v1, :cond_1

    .line 187
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 188
    :catch_2
    move-exception v3

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    .line 187
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 189
    :cond_3
    :goto_4
    throw v3

    .line 188
    :catch_3
    move-exception v4

    goto :goto_4

    .line 185
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 182
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "bytes":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
