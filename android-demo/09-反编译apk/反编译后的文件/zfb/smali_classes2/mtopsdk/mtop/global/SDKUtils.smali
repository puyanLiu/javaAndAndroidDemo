.class public Lmtopsdk/mtop/global/SDKUtils;
.super Ljava/lang/Object;
.source "SDKUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKUtils"

.field private static sdkConfig:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lmtopsdk/mtop/global/SDKUtils;->loadUnitInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static clearCacheBlock(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lanetwork/network/cache/ApiCache;

    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/cache/ApiCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lanetwork/network/cache/ApiCache;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCorrectionTime()J
    .locals 6

    .prologue
    .line 40
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getTimeOffset()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCorrectionTimeMillis()J
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMtopSdkProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static getMtopSdkProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTimeOffset()J
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lmtopsdk/xstate/XState;->f()Ljava/lang/String;

    move-result-object v2

    .line 59
    const-wide/16 v0, 0x0

    .line 60
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 70
    :goto_0
    return-wide v0

    .line 64
    :catch_0
    move-exception v2

    const-string/jumbo v2, "mtopsdk.SDKUtils"

    const-string/jumbo v3, "parse t_offset failed"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    const-string/jumbo v2, "t_offset"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initTimeOffset()V
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 76
    const-string/jumbo v1, "mtop.common.getTimestamp"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lmtopsdk/mtop/MtopProxy;

    new-instance v2, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v2}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lmtopsdk/mtop/common/GetTimeStampMtopCallback;

    invoke-direct {v4}, Lmtopsdk/mtop/common/GetTimeStampMtopCallback;-><init>()V

    invoke-direct {v1, v0, v2, v3, v4}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 79
    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall()Lmtopsdk/mtop/common/ApiID;

    .line 80
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    const-string/jumbo v1, "[SDKUtils]initTimeOffset called "

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private static loadUnitInfo(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 277
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    .line 279
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "UnitSettingStore"

    const-string/jumbo v4, "USER_UNIT_ITEM."

    invoke-virtual {v0, v2, v3, v4, p0}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v1, v5}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUserUnit(Lmtopsdk/mtop/unit/UserUnit;)Lmtopsdk/mtop/global/SDKConfig;

    .line 283
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    const-string/jumbo v1, "[loadUnitInfo]  userUnit queryed from local storage is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    :try_start_0
    const-class v2, Lmtopsdk/mtop/unit/UserUnit;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/unit/UserUnit;

    .line 288
    if-eqz v0, :cond_4

    iget-object v2, v0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 289
    invoke-virtual {v1, v0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUserUnit(Lmtopsdk/mtop/unit/UserUnit;)Lmtopsdk/mtop/global/SDKConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    :goto_1
    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalUserUnit()Lmtopsdk/mtop/unit/UserUnit;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    sget-object v2, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v2}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v0}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "UnitSettingStore"

    const-string/jumbo v4, "API_UNIT_ITEM"

    invoke-virtual {v0, v2, v3, v4}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    const-string/jumbo v3, "[loadUnitInfo]  apiUnit queryed from local storage is null"

    invoke-static {v0, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_2
    :try_start_1
    const-class v0, Lmtopsdk/mtop/unit/ApiUnit;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/unit/ApiUnit;

    .line 313
    if-nez v0, :cond_3

    .line 314
    const-string/jumbo v3, "mtopsdk.SDKUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[loadUnitInfo] apiUnit from local storage is invalid,apiUnitStr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_3
    invoke-virtual {v1, v0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalApiUnit(Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/global/SDKConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const-string/jumbo v1, "mtopsdk.SDKUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[loadUnitInfo] parse apiUnit from local Storage error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUserUnit(Lmtopsdk/mtop/unit/UserUnit;)Lmtopsdk/mtop/global/SDKConfig;

    .line 293
    const-string/jumbo v2, "mtopsdk.SDKUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[loadUnitInfo] userUnit from local storage is invalid,userUnit="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 298
    :catch_1
    move-exception v0

    .line 297
    const-string/jumbo v2, "mtopsdk.SDKUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[loadUnitInfo] parse userUnit from local Storage error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static logOut()V
    .locals 2

    .prologue
    .line 178
    const-string/jumbo v0, "sid"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "ecode"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "userId"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalUnitSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUserUnit(Lmtopsdk/mtop/unit/UserUnit;)Lmtopsdk/mtop/global/SDKConfig;

    .line 186
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestManager;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->userStatusChange()V

    .line 187
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    const-string/jumbo v1, "[logOut] remove sessionInfo succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static registerDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 160
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 162
    :cond_0
    return-void
.end method

.method public static registerEcode(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v0, "ecode"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static registerLat(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "lat"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static registerLng(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "lng"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static registerMtopSdkProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 197
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register MtopSdk Property succeed,key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 91
    const-string/jumbo v0, "sid"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "ecode"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "userId"

    invoke-static {v0, p2}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalUnitSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lmtopsdk/mtop/global/SDKUtils$1;

    invoke-direct {v0, p2}, Lmtopsdk/mtop/global/SDKUtils$1;-><init>(Ljava/lang/String;)V

    .line 104
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestManager;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->userStatusChange()V

    .line 116
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    const-string/jumbo v1, "[registerSessionInfo] register sessionInfo succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string/jumbo v1, "mtopsdk.SDKUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[registerSessionInfo]submit loadUnitInfoTask to ThreadPool error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalUserUnit(Lmtopsdk/mtop/unit/UserUnit;)Lmtopsdk/mtop/global/SDKConfig;

    goto :goto_0
.end method

.method public static registerSid(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    const-string/jumbo v0, "sid"

    invoke-static {v0, p0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static registerTtid(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    sget-object v0, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 172
    :cond_0
    return-void
.end method

.method public static removeCacheBlock(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 228
    new-instance v0, Lanetwork/network/cache/ApiCache;

    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/cache/ApiCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    invoke-static {p0}, Lanetwork/network/cache/ApiCache;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static removeCacheItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 263
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "mtopsdk.SDKUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[removeCacheItem] remove CacheItem failed,invalid cacheKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 267
    :cond_0
    new-instance v0, Lanetwork/network/cache/ApiCache;

    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/cache/ApiCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    invoke-static {p0, p1}, Lanetwork/network/cache/ApiCache;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static unintallCacheBlock(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lanetwork/network/cache/ApiCache;

    sget-object v1, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/SDKUtils;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/cache/ApiCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    invoke-static {p0}, Lanetwork/network/cache/ApiCache;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
