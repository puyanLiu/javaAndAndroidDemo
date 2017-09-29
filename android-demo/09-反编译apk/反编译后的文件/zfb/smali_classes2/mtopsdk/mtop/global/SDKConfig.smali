.class public Lmtopsdk/mtop/global/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKConfig"

.field private static volatile apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

.field private static appKey:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static final config:Lmtopsdk/mtop/global/SDKConfig;

.field private static context:Landroid/content/Context;

.field private static dailyAppkeyIndex:I

.field private static deviceId:Ljava/lang/String;

.field private static envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private static globalProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onlineAppKeyIndex:I

.field private static saveFileRootDir:Ljava/lang/String;

.field private static securityAppKey:Ljava/lang/String;

.field private static sign:Lmtopsdk/security/ISign;

.field private static ttid:Ljava/lang/String;

.field private static volatile userUnit:Lmtopsdk/mtop/unit/UserUnit;


# instance fields
.field private updateUnitInfolock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Lmtopsdk/mtop/global/SDKConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SDKConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->config:Lmtopsdk/mtop/global/SDKConfig;

    .line 41
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 47
    sput v1, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    .line 49
    sput v1, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    .line 66
    const-string/jumbo v0, "apicache"

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->saveFileRootDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    .line 34
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->config:Lmtopsdk/mtop/global/SDKConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    return-object v0
.end method

.method public getGlobalAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGlobalDailyAppKeyIndex()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    return v0
.end method

.method public getGlobalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object v0
.end method

.method public getGlobalOnlineAppKeyIndex()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    return v0
.end method

.method public getGlobalProperties()Ljava/util/Hashtable;
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
    .line 248
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->globalProperties:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/common/util/GlobalPropertyMgr;->getInstance(Landroid/content/Context;)Lmtopsdk/common/util/GlobalPropertyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/common/util/GlobalPropertyMgr;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->globalProperties:Ljava/util/Hashtable;

    .line 251
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->globalProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getGlobalSaveFileRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->saveFileRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalSecurityAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->securityAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalSign()Lmtopsdk/security/ISign;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->sign:Lmtopsdk/security/ISign;

    return-object v0
.end method

.method public getGlobalTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalUserUnit()Lmtopsdk/mtop/unit/UserUnit;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lmtopsdk/mtop/global/SDKConfig;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    return-object v0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySwitchOpen()Z

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public setGlobalApiUnit(Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 4

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 285
    :try_start_0
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    .line 286
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalApiUnit] set apiUnit succeed,apiUnit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmtopsdk/mtop/unit/ApiUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 294
    :cond_0
    :goto_0
    return-object p0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    :try_start_1
    const-string/jumbo v1, "mtopsdk.SDKConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setGlobalApiUnit] set apiUnit error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 143
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->appKey:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "appKey"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object p0
.end method

.method public setGlobalAppVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3

    .prologue
    .line 223
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->appVersion:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set appVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public setGlobalContext(Landroid/content/Context;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/SDKConfig;->context:Landroid/content/Context;

    .line 95
    :cond_0
    return-object p0
.end method

.method public setGlobalDailyAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 118
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->dailyAppkeyIndex:I

    .line 119
    return-object p0
.end method

.method public setGlobalDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 178
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->deviceId:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "deviceId"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-object p0
.end method

.method public setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 213
    :cond_0
    return-object p0
.end method

.method public setGlobalOnlineAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 128
    sput p1, Lmtopsdk/mtop/global/SDKConfig;->onlineAppKeyIndex:I

    .line 129
    return-object p0
.end method

.method public setGlobalSaveFileRootDir(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 237
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->saveFileRootDir:Ljava/lang/String;

    .line 240
    :cond_0
    return-object p0
.end method

.method public setGlobalSecurityAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 3

    .prologue
    .line 160
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->securityAppKey:Ljava/lang/String;

    .line 161
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalSecurityAppKey] securityAppKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-object p0
.end method

.method public setGlobalSign(Lmtopsdk/security/ISign;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 0

    .prologue
    .line 109
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->sign:Lmtopsdk/security/ISign;

    .line 110
    return-object p0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/global/SwitchConfig;->setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;

    .line 272
    return-object p0
.end method

.method public setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 194
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->ttid:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "ttid"

    invoke-static {v0, p1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-object p0
.end method

.method public setGlobalUserUnit(Lmtopsdk/mtop/unit/UserUnit;)Lmtopsdk/mtop/global/SDKConfig;
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    :try_start_0
    sput-object p1, Lmtopsdk/mtop/global/SDKConfig;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    .line 306
    if-eqz p1, :cond_0

    .line 307
    const-string/jumbo v0, "unittype"

    iget-object v1, p1, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v1}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "unitprefix"

    iget-object v1, p1, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setGlobalUserUnit] set userUnit succeed,userUnit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmtopsdk/mtop/unit/UserUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 322
    :goto_1
    return-object p0

    .line 311
    :cond_0
    :try_start_1
    const-string/jumbo v0, "unittype"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    const-string/jumbo v0, "unitprefix"

    invoke-static {v0}, Lmtopsdk/xstate/XState;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    const-string/jumbo v0, "mtopsdk.SDKConfig"

    const-string/jumbo v1, "[setGlobalUserUnit] clear userUnit succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :try_start_2
    const-string/jumbo v1, "mtopsdk.SDKConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setGlobalUserUnit] set userUnit error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    iget-object v0, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmtopsdk/mtop/global/SDKConfig;->updateUnitInfolock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
