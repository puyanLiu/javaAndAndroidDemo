.class public Lmtopsdk/mtop/intf/Mtop;
.super Ljava/lang/Object;
.source "Mtop.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.Mtop"

.field private static volatile instance:Lmtopsdk/mtop/intf/Mtop;

.field private static volatile isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/intf/Mtop;->instance:Lmtopsdk/mtop/intf/Mtop;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    const-class v1, Lmtopsdk/mtop/intf/Mtop;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    if-nez v0, :cond_1

    .line 75
    if-nez p0, :cond_0

    .line 76
    const-string/jumbo v0, "mtopsdk.Mtop"

    const-string/jumbo v2, "[Mtop init] The Parameter context can not be null."

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The Parameter context can not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 79
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lmtopsdk/mtop/global/MtopSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_1
    monitor-exit v1

    return-void
.end method

.method public static instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lmtopsdk/mtop/intf/Mtop;->instance:Lmtopsdk/mtop/intf/Mtop;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lmtopsdk/mtop/intf/Mtop;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/intf/Mtop;->instance:Lmtopsdk/mtop/intf/Mtop;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lmtopsdk/mtop/intf/Mtop;

    invoke-direct {v0}, Lmtopsdk/mtop/intf/Mtop;-><init>()V

    sput-object v0, Lmtopsdk/mtop/intf/Mtop;->instance:Lmtopsdk/mtop/intf/Mtop;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-boolean v0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    if-nez v0, :cond_1

    .line 58
    invoke-static {p0, p1}, Lmtopsdk/mtop/intf/Mtop;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_1
    sget-object v0, Lmtopsdk/mtop/intf/Mtop;->instance:Lmtopsdk/mtop/intf/Mtop;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAppKeyIndex(II)V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalOnlineAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;

    .line 141
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalDailyAppKeyIndex(I)Lmtopsdk/mtop/global/SDKConfig;

    .line 142
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAppVersion(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 150
    return-void
.end method

.method public static setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_ONLINE:Ljava/lang/String;

    .line 172
    :cond_0
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_PREPARE:Ljava/lang/String;

    .line 175
    :cond_1
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST:Ljava/lang/String;

    .line 178
    :cond_2
    return-void
.end method

.method public static setSecurityAppKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalSecurityAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 159
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/intf/MtopBuilder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildForAsync4j(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;

    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;-><init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildForAsync4j(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;

    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/intf/async4j/MtopBuilderForAsync4j;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    return-object v0
.end method

.method public logSwitch(Z)Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .prologue
    .line 196
    invoke-static {p1}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 197
    return-object p0
.end method

.method public logout()Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .prologue
    .line 185
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->logOut()V

    .line 186
    return-object p0
.end method

.method public registerDeviceId(Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .prologue
    .line 207
    invoke-static {p1}, Lmtopsdk/mtop/global/SDKUtils;->registerDeviceId(Ljava/lang/String;)V

    .line 208
    return-object p0
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .prologue
    .line 114
    invoke-static {p1, p2, p3}, Lmtopsdk/mtop/global/SDKUtils;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-object p0
.end method

.method public setCoordinates(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .prologue
    .line 127
    invoke-static {p1}, Lmtopsdk/mtop/global/SDKUtils;->registerLng(Ljava/lang/String;)V

    .line 128
    invoke-static {p2}, Lmtopsdk/mtop/global/SDKUtils;->registerLat(Ljava/lang/String;)V

    .line 129
    return-object p0
.end method

.method public switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;
    .locals 0

    .prologue
    .line 101
    invoke-static {p1}, Lmtopsdk/mtop/global/MtopSDK;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 102
    return-object p0
.end method

.method public unInit()Lmtopsdk/mtop/intf/Mtop;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->unInit()V

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/intf/Mtop;->isInit:Z

    .line 90
    return-object p0
.end method
