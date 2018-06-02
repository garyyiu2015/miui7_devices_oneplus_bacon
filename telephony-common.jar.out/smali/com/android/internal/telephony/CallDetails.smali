.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_SUBSTATE_CONNECTED_SUSPENDED:I = 0x1

.field public static final CALL_SUBSTATE_UNDEFINED:I = 0x0

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lcom/android/internal/telephony/ServiceStatus;

.field private mVideoPauseState:I

.field public peerAbility:[Lcom/android/internal/telephony/ServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 190
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 193
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 196
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 197
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 198
    iput-object p3, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .param p1, "srcCall"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 204
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 205
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    .line 206
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .line 208
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .line 210
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 219
    .local v1, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 220
    const/4 v4, 0x0

    .line 233
    :goto_0
    return-object v4

    .line 225
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 227
    if-eqz v1, :cond_1

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v4, v1

    .line 233
    goto :goto_0
.end method


# virtual methods
.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 255
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 256
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "currKey":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 262
    .end local v0    # "currKey":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 254
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setVideoPauseState(I)V
    .locals 0
    .param p1, "videoPauseState"    # I

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 270
    const-string v3, ""

    .local v3, "extrasResult":Ljava/lang/String;
    const-string v8, ""

    .local v8, "localSrvAbility":Ljava/lang/String;
    const-string v9, ""

    .line 271
    .local v9, "peerSrvAbility":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v10, v0, v4

    .line 273
    .local v10, "s":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    if-eqz v12, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->localAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .local v0, "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v11, v0, v5

    .line 279
    .local v11, "srv":Lcom/android/internal/telephony/ServiceStatus;
    if-eqz v11, :cond_1

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 282
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_1

    .line 283
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    .local v1, "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v2, v1, v4

    .line 284
    .local v2, "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 278
    .end local v1    # "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v2    # "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 291
    .end local v5    # "i$":I
    .end local v11    # "srv":Lcom/android/internal/telephony/ServiceStatus;
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    if-eqz v12, :cond_4

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/CallDetails;->peerAbility:[Lcom/android/internal/telephony/ServiceStatus;

    .restart local v0    # "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/android/internal/telephony/ServiceStatus;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_4

    aget-object v11, v0, v5

    .line 293
    .restart local v11    # "srv":Lcom/android/internal/telephony/ServiceStatus;
    if-eqz v11, :cond_3

    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isValid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v11, Lcom/android/internal/telephony/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/telephony/ServiceStatus;->status:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    iget-object v12, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_3

    .line 297
    iget-object v1, v11, Lcom/android/internal/telephony/ServiceStatus;->accessTechStatus:[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;

    .restart local v1    # "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    array-length v7, v1

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v7, :cond_3

    aget-object v2, v1, v4

    .line 298
    .restart local v2    # "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 292
    .end local v1    # "arr$":[Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v2    # "at":Lcom/android/internal/telephony/ServiceStatus$StatusForAccessTech;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_3

    .line 305
    .end local v5    # "i$":I
    .end local v11    # "srv":Lcom/android/internal/telephony/ServiceStatus;
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callSubState "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->callsubstate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " videoPauseState"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/CallDetails;->mVideoPauseState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Local Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Peer Ability "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
