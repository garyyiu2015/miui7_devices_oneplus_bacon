.class Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$4;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$4;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 373
    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    .line 375
    .local v3, "nfc":Landroid/nfc/INfcAdapter;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 377
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v9, "bluetooth_manager"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 382
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_b

    :cond_0
    move v4, v7

    .line 384
    .local v4, "nfcOff":Z
    :goto_0
    if-nez v4, :cond_1

    .line 385
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_2
    move v1, v7

    .line 395
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_3

    .line 396
    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v9

    if-nez v9, :cond_d

    :cond_4
    move v6, v7

    .line 406
    .local v6, "radioOff":Z
    :goto_4
    if-nez v6, :cond_5

    .line 407
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 415
    :cond_5
    :goto_5
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/power/ShutdownThread$4;->val$endTime:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    .line 418
    if-nez v1, :cond_6

    .line 420
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    if-nez v9, :cond_e

    move v1, v7

    .line 425
    :goto_7
    if-eqz v1, :cond_6

    .line 426
    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_6
    if-nez v6, :cond_7

    .line 431
    :try_start_4
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    if-nez v9, :cond_f

    move v6, v7

    .line 436
    :goto_8
    if-eqz v6, :cond_7

    .line 437
    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_7
    if-nez v4, :cond_8

    .line 442
    :try_start_5
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    if-ne v9, v7, :cond_10

    move v4, v7

    .line 447
    :goto_9
    if-eqz v4, :cond_8

    .line 448
    const-string v9, "ShutdownThread"

    const-string v10, "NFC turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_8
    if-eqz v6, :cond_11

    if-eqz v1, :cond_11

    if-eqz v4, :cond_11

    .line 453
    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$4;->val$done:[Z

    aput-boolean v7, v9, v8

    .line 459
    :cond_9
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$4;->val$done:[Z

    aget-boolean v8, v9, v8

    if-nez v8, :cond_a

    .line 460
    const-string v8, "ShutdownThread"

    const-string v9, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_a
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mModemDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 463
    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v7}, Lcom/android/server/power/ShutdownThread;->actionDone()V

    .line 464
    return-void

    .end local v1    # "bluetoothOff":Z
    .end local v4    # "nfcOff":Z
    .end local v6    # "radioOff":Z
    :cond_b
    move v4, v8

    .line 382
    goto/16 :goto_0

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    const/4 v4, 0x1

    .restart local v4    # "nfcOff":Z
    goto/16 :goto_1

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_c
    move v1, v8

    .line 394
    goto/16 :goto_2

    .line 399
    :catch_1
    move-exception v2

    .line 400
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_3

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_d
    move v6, v8

    .line 405
    goto/16 :goto_4

    .line 410
    :catch_2
    move-exception v2

    .line 411
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    const/4 v6, 0x1

    .restart local v6    # "radioOff":Z
    goto/16 :goto_5

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_e
    move v1, v8

    .line 420
    goto/16 :goto_7

    .line 421
    :catch_3
    move-exception v2

    .line 422
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v1, 0x1

    goto/16 :goto_7

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_f
    move v6, v8

    .line 431
    goto/16 :goto_8

    .line 432
    :catch_4
    move-exception v2

    .line 433
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    const/4 v6, 0x1

    goto/16 :goto_8

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_10
    move v4, v8

    .line 442
    goto :goto_9

    .line 443
    :catch_5
    move-exception v2

    .line 444
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const/4 v4, 0x1

    goto/16 :goto_9

    .line 457
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_11
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6
.end method
