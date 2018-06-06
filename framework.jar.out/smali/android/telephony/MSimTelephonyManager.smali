.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 76
    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    .line 81
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 820
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 823
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 824
    :catch_0
    move-exception v2

    .line 829
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 198
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    .line 202
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 184
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 740
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 742
    aget-object v1, v2, p1

    .line 745
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 849
    const-string v0, ""

    .line 850
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 851
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 854
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 858
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 859
    const-string v2, ""

    .line 860
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 861
    aget-object v2, v4, v1

    .line 863
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    if-eqz v4, :cond_3

    .line 870
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 874
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 699
    const-string v3, ""

    .line 700
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 701
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 704
    const-string p2, ""

    .line 707
    :cond_0
    if-eqz v2, :cond_1

    .line 708
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 711
    :cond_1
    if-gez p1, :cond_2

    .line 728
    :goto_0
    return-void

    .line 713
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 714
    const-string v4, ""

    .line 715
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 716
    aget-object v4, v1, v0

    .line 718
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    if-eqz v1, :cond_5

    .line 723
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 727
    :cond_5
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllCellInfo(I)Ljava/util/List;
    .locals 1
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 655
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 666
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 675
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultDataSubscription()I
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 464
    const/4 v0, -0x1

    return v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 267
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 238
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 222
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 177
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 438
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 412
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 427
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 378
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x1

    .line 396
    :goto_0
    return v1

    .line 383
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const/4 v1, 0x2

    goto :goto_0

    .line 386
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    const/4 v1, 0x3

    goto :goto_0

    .line 389
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    const/4 v1, 0x4

    goto :goto_0

    .line 392
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    const/4 v1, 0x5

    goto :goto_0

    .line 396
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 577
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 251
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 647
    return-void
.end method

.method public setDefaultDataSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 777
    const/4 v0, 0x0

    return v0
.end method
