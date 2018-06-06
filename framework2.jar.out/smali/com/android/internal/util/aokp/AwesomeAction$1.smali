.class final Lcom/android/internal/util/aokp/AwesomeAction$1;
.super Ljava/lang/Object;
.source "AwesomeAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/aokp/AwesomeAction;->launchAction(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$action:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeConstants;->fromString(Ljava/lang/String;)Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    move-result-object v3

    .line 74
    .local v3, "AwesomeEnum":Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;
    sget-object v22, Lcom/android/internal/util/aokp/AwesomeAction$3;->$SwitchMap$com$android$internal$util$aokp$AwesomeConstants$AwesomeConstant:[I

    invoke-virtual {v3}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v22, "statusbar"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v22

    goto :goto_0

    .line 85
    :pswitch_1
    new-instance v9, Landroid/content/Intent;

    const-string v22, "android.intent.action.ASSIST"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/android/internal/util/aokp/AwesomeAction;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_2
    const/16 v22, 0x3

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto :goto_0

    .line 94
    :pswitch_3
    const/16 v22, 0x4

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto :goto_0

    .line 97
    :pswitch_4
    const/16 v22, 0x52

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto :goto_0

    .line 100
    :pswitch_5
    const/16 v22, 0x54

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto :goto_0

    .line 103
    :pswitch_6
    const/16 v22, 0xbb

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto :goto_0

    .line 106
    :pswitch_7
    new-instance v17, Lcom/android/internal/util/aokp/AwesomeAction$KillTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/util/aokp/AwesomeAction$KillTask;-><init>(Landroid/content/Context;)V

    .line 107
    .local v17, "mKillTask":Lcom/android/internal/util/aokp/AwesomeAction$KillTask;
    # getter for: Lcom/android/internal/util/aokp/AwesomeAction;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeAction;->access$100()Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 110
    .end local v17    # "mKillTask":Lcom/android/internal/util/aokp/AwesomeAction$KillTask;
    :pswitch_8
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v5, "appWindow":Landroid/content/Intent;
    const-string v22, "com.android.systemui.ACTION_SHOW_APP_WINDOW"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    .end local v5    # "appWindow":Landroid/content/Intent;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "audio"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 116
    .local v4, "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 118
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "vibrator"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Vibrator;

    .line 121
    .local v21, "vib":Landroid/os/Vibrator;
    if-eqz v21, :cond_0

    .line 122
    const-wide/16 v22, 0x32

    invoke-virtual/range {v21 .. v23}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 125
    .end local v21    # "vib":Landroid/os/Vibrator;
    :cond_1
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 126
    new-instance v20, Landroid/media/ToneGenerator;

    const/16 v22, 0x5

    const/16 v23, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 129
    .local v20, "tg":Landroid/media/ToneGenerator;
    if-eqz v20, :cond_0

    .line 130
    const/16 v22, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 136
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v20    # "tg":Landroid/media/ToneGenerator;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "audio"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 137
    .restart local v4    # "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    if-eqz v22, :cond_2

    .line 139
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 141
    :cond_2
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 142
    new-instance v20, Landroid/media/ToneGenerator;

    const/16 v22, 0x5

    const/16 v23, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 145
    .restart local v20    # "tg":Landroid/media/ToneGenerator;
    if-eqz v20, :cond_0

    .line 146
    const/16 v22, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 152
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v20    # "tg":Landroid/media/ToneGenerator;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "audio"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 153
    .restart local v4    # "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 155
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "vibrator"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Vibrator;

    .line 158
    .restart local v21    # "vib":Landroid/os/Vibrator;
    if-eqz v21, :cond_0

    .line 159
    const-wide/16 v22, 0x32

    invoke-virtual/range {v21 .. v23}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 161
    .end local v21    # "vib":Landroid/os/Vibrator;
    :cond_3
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 162
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 164
    :cond_4
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 165
    new-instance v20, Landroid/media/ToneGenerator;

    const/16 v22, 0x5

    const/16 v23, 0x55

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 168
    .restart local v20    # "tg":Landroid/media/ToneGenerator;
    if-eqz v20, :cond_0

    .line 169
    const/16 v22, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 175
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v20    # "tg":Landroid/media/ToneGenerator;
    :pswitch_c
    const/16 v22, 0x1a

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto/16 :goto_0

    .line 178
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 182
    :pswitch_e
    new-instance v14, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v14, "intentTorch":Landroid/content/Intent;
    const-string v22, "com.aokp.Torch/.TorchActivity"

    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    .end local v14    # "intentTorch":Landroid/content/Intent;
    :pswitch_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 191
    .local v18, "startMillis":J
    sget-object v22, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 192
    .local v6, "builder":Landroid/net/Uri$Builder;
    const-string v22, "time"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 194
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v13

    .line 196
    .local v13, "intentToday":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    .end local v6    # "builder":Landroid/net/Uri$Builder;
    .end local v13    # "intentToday":Landroid/content/Intent;
    .end local v18    # "startMillis":J
    :pswitch_10
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.QUICK_CLOCK"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v11, "intentClock":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    .end local v11    # "intentClock":Landroid/content/Intent;
    :pswitch_11
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.INSERT"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v23, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    .line 207
    .local v12, "intentEvent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 211
    .end local v12    # "intentEvent":Landroid/content/Intent;
    :pswitch_12
    new-instance v15, Landroid/content/Intent;

    const-string v22, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v15, "intentVoice":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    .end local v15    # "intentVoice":Landroid/content/Intent;
    :pswitch_13
    new-instance v10, Landroid/content/Intent;

    const-string v22, "android.intent.action.SET_ALARM"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v10, "intentAlarm":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    .end local v10    # "intentAlarm":Landroid/content/Intent;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->toggleLastApp(Landroid/content/Context;)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$200(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 225
    :pswitch_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v22, "statusbar"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 228
    :catch_1
    move-exception v22

    goto/16 :goto_0

    .line 235
    :pswitch_16
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$action:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    .line 236
    .local v16, "intentapp":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 238
    .end local v16    # "intentapp":Landroid/content/Intent;
    :catch_2
    move-exception v8

    .line 239
    .local v8, "e":Ljava/net/URISyntaxException;
    const-string v22, "AwesomeAction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "URISyntaxException: ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$action:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .end local v8    # "e":Ljava/net/URISyntaxException;
    :catch_3
    move-exception v8

    .line 241
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string v22, "AwesomeAction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ActivityNotFound: ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$action:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_17
    new-instance v7, Landroid/content/Intent;

    const-string v22, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v7, "camera":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/util/aokp/AwesomeAction$1;->val$mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 250
    .end local v7    # "camera":Landroid/content/Intent;
    :pswitch_18
    const/16 v22, 0x15

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto/16 :goto_0

    .line 253
    :pswitch_19
    const/16 v22, 0x16

    # invokes: Lcom/android/internal/util/aokp/AwesomeAction;->injectKeyDelayed(I)V
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/aokp/AwesomeAction;->access$000(I)V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
