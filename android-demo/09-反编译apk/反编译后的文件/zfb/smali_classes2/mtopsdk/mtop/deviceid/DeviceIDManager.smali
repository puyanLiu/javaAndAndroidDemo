.class public Lmtopsdk/mtop/deviceid/DeviceIDManager;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# static fields
.field private static final CREATED_NO:Ljava/lang/String; = "0"

.field private static final CREATED_YES:Ljava/lang/String; = "1"

.field private static final DEVICEID_CREATED_KEY:Ljava/lang/String; = "deviceId_created"

.field private static final DEVICEID_KEY:Ljava/lang/String; = "deviceId"

.field private static final DEVICEID_STORE:Ljava/lang/String; = "mtopsdk_deviceId_store"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.DeviceIDManager"

.field private static volatile instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;


# instance fields
.field private mCreated:Z

.field private mDeviceId:Ljava/lang/String;

.field private mLastFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdFromStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    if-nez p1, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    const-string/jumbo v1, "mtopsdk_deviceId_store"

    const-string/jumbo v2, "deviceId"

    invoke-virtual {v0, p1, v1, p2, v2}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v1

    const-string/jumbo v2, "mtopsdk_deviceId_store"

    const-string/jumbo v3, "deviceId_created"

    invoke-virtual {v1, p1, v2, p2, v3}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mCreated:Z

    .line 200
    :cond_2
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string/jumbo v1, "mtopsdk.DeviceIDManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getDeviceIdFromStore] appkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lmtopsdk/mtop/deviceid/DeviceIDManager;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-direct {v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager;-><init>()V

    sput-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 132
    const-string/jumbo v0, "mtopsdk.DeviceIDManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[getRemoteDeviceID] called!appkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v2, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;-><init>()V

    .line 134
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_0
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    invoke-static {v4}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    const-string/jumbo v0, "mtopsdk.DeviceIDManager"

    const-string/jumbo v2, "[getRemoteDeviceID]device_global_id is blank"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-object v1

    .line 156
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setDevice_global_id(Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mCreated:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setNew_device(Z)V

    .line 158
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC0(Ljava/lang/String;)V

    .line 159
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC1(Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC2(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC3(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC4(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lmtopsdk/xstate/util/PhoneInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC5(Ljava/lang/String;)V

    .line 164
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->setC6(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalTtid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    :try_start_0
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    const-class v2, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponse;

    invoke-static {v0, v2}, Lmtopsdk/mtop/util/MtopConvert;->jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;

    .line 173
    invoke-virtual {v0}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;->getDevice_id()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :try_start_1
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    const-string/jumbo v1, "1"

    invoke-direct {p0, p1, p2, v0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    move-object v1, v0

    .line 182
    goto/16 :goto_0

    .line 157
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 179
    :goto_3
    const-string/jumbo v2, "mtopsdk.DeviceIDManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getRemoteDeviceID] error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 178
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    const-string/jumbo v2, "mtopsdk_deviceId_store"

    const-string/jumbo v4, "deviceId"

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    const-string/jumbo v2, "mtopsdk_deviceId_store"

    const-string/jumbo v4, "deviceId_created"

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "mtopsdk.DeviceIDManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[saveDeviceIdToStore] appkey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mCreated:Z

    .line 122
    const-string/jumbo v0, ""

    const-string/jumbo v1, "0"

    invoke-direct {p0, p1, p2, v0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "mtopsdk.DeviceIDManager"

    const-string/jumbo v1, "[getDeviceID] return mLastFuture"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    .line 99
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;

    invoke-direct {v1, p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 88
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lmtopsdk/mtop/deviceid/DeviceIDManager$2;

    invoke-direct {v2, p0, v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$2;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    iput-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mLastFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    const-string/jumbo v2, "mtopsdk.DeviceIDManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getDeviceID] submit getRemoteDeviceID futureTask error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getDeviceIdFromStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    .line 111
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method
