.class public Lmtopsdk/mtop/global/SwitchConfig;
.super Ljava/lang/Object;
.source "SwitchConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfig"

.field private static apiConfigMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/config/ApiConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final config:Lmtopsdk/mtop/global/SwitchConfig;

.field private static gzipThresholdSwitch:I

.field private static mtopsdkPropertySwitchOpen:Z

.field private static securityApiSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static spdySslSwitchOpen:Z

.field private static spdySwitchOpen:Z

.field private static unitSwitchOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    new-instance v0, Lmtopsdk/mtop/global/SwitchConfig;

    invoke-direct {v0}, Lmtopsdk/mtop/global/SwitchConfig;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    .line 41
    sput-boolean v1, Lmtopsdk/mtop/global/SwitchConfig;->spdySwitchOpen:Z

    .line 46
    sput-boolean v1, Lmtopsdk/mtop/global/SwitchConfig;->spdySslSwitchOpen:Z

    .line 51
    const/16 v0, 0x400

    sput v0, Lmtopsdk/mtop/global/SwitchConfig;->gzipThresholdSwitch:I

    .line 56
    sput-boolean v1, Lmtopsdk/mtop/global/SwitchConfig;->unitSwitchOpen:Z

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopsdkPropertySwitchOpen:Z

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/SwitchConfig;->apiConfigMap:Ljava/util/Hashtable;

    .line 74
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.wlp.award.doAwardCustom$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.taobao.aplatform.new.securySet$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.taobao.ferrari.game.solitaire$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    const-string/jumbo v1, "mtop.taobao.ferrari.game.chest$1.0"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/global/SwitchConfig;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->config:Lmtopsdk/mtop/global/SwitchConfig;

    return-object v0
.end method


# virtual methods
.method public getApiConfigByApiKey(Ljava/lang/String;)Lmtopsdk/mtop/config/ApiConfig;
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->apiConfigMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/config/ApiConfig;

    goto :goto_0
.end method

.method public getGlobalGzipThresholdSwitch()I
    .locals 4

    .prologue
    .line 112
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v1, "gzipThresHold"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lmtopsdk/mtop/global/SwitchConfig;->gzipThresholdSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "gzipThresholdSwitch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lmtopsdk/mtop/global/SwitchConfig;->gzipThresholdSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget v0, Lmtopsdk/mtop/global/SwitchConfig;->gzipThresholdSwitch:I

    return v0

    .line 118
    :catch_0
    move-exception v1

    const-string/jumbo v1, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parse gzipThresholdSwitchConfig error,gzipThresholdSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPercentSpdySsl()I
    .locals 4

    .prologue
    .line 129
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v1, "percentSpdySsl"

    const-string/jumbo v2, "5"

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "percentSpdySsl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x5

    .line 134
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->parserInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    :cond_0
    return v0
.end method

.method public getSecurityApiSets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    return-object v0
.end method

.method public isGlobalCacheSwitchOpen()Z
    .locals 4

    .prologue
    .line 213
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v1, "enableCache"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remote cacheSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobalSpdySwitchOpen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v3, "enableSpdy"

    const-string/jumbo v4, "true"

    invoke-static {v0, v3, v4}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string/jumbo v3, "mtopsdk.SwitchConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "remote spdySwitchConfig="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 92
    :goto_0
    sget-boolean v3, Lmtopsdk/mtop/global/SwitchConfig;->spdySwitchOpen:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 95
    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isGlobalUnitSwitchOpen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v3, "enableUnit"

    const-string/jumbo v4, "true"

    invoke-static {v0, v3, v4}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string/jumbo v3, "mtopsdk.SwitchConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "remote unitSwitchConfig="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 205
    :goto_0
    sget-boolean v3, Lmtopsdk/mtop/global/SwitchConfig;->unitSwitchOpen:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 208
    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isMtopsdkPropertySwitchOpen()Z
    .locals 4

    .prologue
    .line 239
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v1, "enableProperty"

    const-string/jumbo v2, "false"

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remote mtopsdkPropertySwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lmtopsdk/mtop/global/SwitchConfig;->mtopsdkPropertySwitchOpen:Z

    goto :goto_0
.end method

.method public isSecurityAppKeyApi(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 273
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSecurityAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v0

    .line 276
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 279
    :cond_0
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->securityApiSets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string/jumbo v1, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[isSecurityAppKeyApi] decideSecurityApi error. apiKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpdyUseSsl()Z
    .locals 6

    .prologue
    .line 144
    invoke-virtual {p0}, Lmtopsdk/mtop/global/SwitchConfig;->getPercentSpdySsl()I

    move-result v0

    .line 146
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    .line 147
    const-string/jumbo v3, "mtopsdk.SwitchConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "percent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";random="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-boolean v3, Lmtopsdk/mtop/global/SwitchConfig;->spdySslSwitchOpen:Z

    if-eqz v3, :cond_0

    int-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpdyUseSsl(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    sget-boolean v2, Lmtopsdk/mtop/global/SwitchConfig;->spdySslSwitchOpen:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 188
    :cond_1
    :goto_0
    return v0

    .line 163
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmtopsdk/mtop/global/SwitchConfig;->getApiConfigByApiKey(Ljava/lang/String;)Lmtopsdk/mtop/config/ApiConfig;

    move-result-object v2

    .line 164
    if-eqz v2, :cond_5

    iget-object v3, v2, Lmtopsdk/mtop/config/ApiConfig;->configVersion:Ljava/lang/String;

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    const-string/jumbo v3, "ssl"

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/config/ApiConfig;->getConfigItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[isSpdyUseSsl]apiKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",sslSwitch=ture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_3
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[isSpdyUseSsl]apiKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",sslSwitch=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 175
    goto :goto_0

    .line 179
    :cond_5
    invoke-virtual {p0}, Lmtopsdk/mtop/global/SwitchConfig;->getPercentSpdySsl()I

    move-result v2

    .line 181
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    .line 182
    int-to-double v5, v2

    cmpg-double v5, v3, v5

    if-gez v5, :cond_6

    .line 183
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string/jumbo v1, "mtopsdk.SwitchConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[isSpdyUseSsl]apiKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";percent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ";random="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 188
    goto/16 :goto_0
.end method

.method public setApiConfig(Ljava/lang/String;Lmtopsdk/mtop/config/ApiConfig;)V
    .locals 1

    .prologue
    .line 308
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sget-object v0, Lmtopsdk/mtop/global/SwitchConfig;->apiConfigMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalSpdySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3

    .prologue
    .line 103
    sput-boolean p1, Lmtopsdk/mtop/global/SwitchConfig;->spdySwitchOpen:Z

    .line 104
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set local spdySwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object p0
.end method

.method public setGlobalUnitSwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3

    .prologue
    .line 229
    sput-boolean p1, Lmtopsdk/mtop/global/SwitchConfig;->unitSwitchOpen:Z

    .line 230
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set local unitSwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object p0
.end method

.method public setMtopsdkPropertySwitchOpen(Z)Lmtopsdk/mtop/global/SwitchConfig;
    .locals 3

    .prologue
    .line 254
    sput-boolean p1, Lmtopsdk/mtop/global/SwitchConfig;->mtopsdkPropertySwitchOpen:Z

    .line 255
    const-string/jumbo v0, "mtopsdk.SwitchConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "set local mtopsdkPropertySwitchOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-object p0
.end method
