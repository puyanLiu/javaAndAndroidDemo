.class public Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;
.super Ljava/lang/Object;
.source "AmnetOperationManager.java"


# static fields
.field public static final AMNET_HOST:Ljava/lang/String; = "mygw.alipay.com"

.field public static final AMNET_PORT:Ljava/lang/String; = "443"

.field public static final AMNET_RC_HOST:Ljava/lang/String; = "mygwrc.alipay.com"

.field private static final PEM_CA:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICPDCCAaUCEHC65B0Q2Sk0tjjKewPMur8wDQYJKoZIhvcNAQECBQAwXzELMAkG\nA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMTcwNQYDVQQLEy5DbGFz\ncyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTk2\nMDEyOTAwMDAwMFoXDTI4MDgwMTIzNTk1OVowXzELMAkGA1UEBhMCVVMxFzAVBgNV\nBAoTDlZlcmlTaWduLCBJbmMuMTcwNQYDVQQLEy5DbGFzcyAzIFB1YmxpYyBQcmlt\nYXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIGfMA0GCSqGSIb3DQEBAQUAA4GN\nADCBiQKBgQDJXFme8huKARS0EN8EQNvjV69qRUCPhAwL0TPZ2RHP7gJYHyX3KqhE\nBarsAx94f56TuZoAqiN91qyFomNFx3InzPRMxnVx0jnvT0Lwdd8KkMaOIG+YD/is\nI19wKTakyYbnsZogy1Olhec9vn2a/iRFM9x2Fe0PonFkTGUugWhFpwIDAQABMA0G\nCSqGSIb3DQEBAgUAA4GBALtMEivPLCYATxQT3ab7/AoRhIzzKBxnki98tsX63/Do\nlbwdj2wsqFHMc9ikwFPwTtYmwHYBV4GSXiHx0bH/59AhWM1pF+NEHJwZRDmJXNyc\nAA9WjQKZ7aKQRUzkuxCkPfAyAw7xzvjoyVGM5mKf5p/AfbdynMk2OmufTqj/ZA1k\n-----END CERTIFICATE-----\n"

.field private static final TAG:Ljava/lang/String; = "amnet_AmnetOperationManager"


# instance fields
.field private activated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->activated:Z

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->activated:Z

    return p1
.end method

.method private addMmtpIps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    const-string/jumbo v0, "server-address"

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetDnsInfos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method private convert2Altering(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)Lcom/alipay/mobile/common/transportext/Transport$Altering;
    .locals 3

    .prologue
    .line 405
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/Transport$Altering;-><init>()V

    .line 406
    iget-wide v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->id:J

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;->id:J

    .line 407
    iget-object v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;->infMinor:Ljava/lang/String;

    .line 408
    iget-object v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;->infMajor:Ljava/lang/String;

    .line 409
    iget v1, p1, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->status:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Altering;->status:I

    .line 410
    return-object v0
.end method

.method private getAmnetDnsInfos(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 368
    if-nez v0, :cond_0

    .line 369
    const-string/jumbo v0, ""

    .line 392
    :goto_0
    return-object v0

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 378
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 381
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    iget-object v2, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->ipEntries:[Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    .line 383
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 384
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;->getIpWithPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    const-string/jumbo v1, "AmnetOperationManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getMmtpUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 355
    const-string/jumbo v1, ""

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetAddress()Ljava/lang/String;

    move-result-object v1

    .line 358
    const/4 v0, 0x0

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->addMmtpIps(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-object v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "amnetAddress=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initNetInfo(Lcom/alipay/mobile/common/transportext/Transport$Activating;)V
    .locals 3

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 325
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    .line 327
    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/amnet/biz/OutEventNotifyManagerImpl;->convert2AppEvent(ZII)Lcom/alipay/mobile/common/amnet/api/model/AppEvent;

    move-result-object v0

    .line 328
    iget-object v1, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->major:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->netMajor:Ljava/lang/String;

    .line 329
    iget-object v0, v0, Lcom/alipay/mobile/common/amnet/api/model/AppEvent;->minor:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/common/transportext/Transport$Activating;->netMinor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string/jumbo v1, "AmnetOperationManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final activateAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V
    .locals 6

    .prologue
    .line 89
    const-string/jumbo v0, "AmnetOperationManager"

    const-string/jumbo v1, " AmnetHelper begin init."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getMmtpUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "AmnetOperationManager"

    const-string/jumbo v1, "mmtpUrl is null.  return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;

    invoke-direct {v3}, Lcom/alipay/mobile/common/transportext/Transport$Activating;-><init>()V

    .line 104
    const-wide/16 v4, 0x1

    iput-wide v4, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->id:J

    .line 106
    iput-object v1, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->cfgLongLink:Ljava/util/Map;

    .line 107
    iput-object v1, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->cfgShortLink:Ljava/util/Map;

    .line 108
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->getAmnetLinkageListener()Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$AmnetLinkageListener;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;->getInstance()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetStorageListener;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    .line 110
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->getAmnetChannels()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->service:Ljava/util/Map;

    .line 113
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->initNetInfo(Lcom/alipay/mobile/common/transportext/Transport$Activating;)V

    .line 114
    iput-object v2, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->domainLongLink:Ljava/lang/String;

    .line 115
    iput-object v2, v3, Lcom/alipay/mobile/common/transportext/Transport$Activating;->domainShortLink:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    const-string/jumbo v0, "security"

    const-string/jumbo v4, "*"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v0, "certificate-name"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "top-CA"

    const-string/jumbo v4, "-----BEGIN CERTIFICATE-----\nMIICPDCCAaUCEHC65B0Q2Sk0tjjKewPMur8wDQYJKoZIhvcNAQECBQAwXzELMAkG\nA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMTcwNQYDVQQLEy5DbGFz\ncyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTk2\nMDEyOTAwMDAwMFoXDTI4MDgwMTIzNTk1OVowXzELMAkGA1UEBhMCVVMxFzAVBgNV\nBAoTDlZlcmlTaWduLCBJbmMuMTcwNQYDVQQLEy5DbGFzcyAzIFB1YmxpYyBQcmlt\nYXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIGfMA0GCSqGSIb3DQEBAQUAA4GN\nADCBiQKBgQDJXFme8huKARS0EN8EQNvjV69qRUCPhAwL0TPZ2RHP7gJYHyX3KqhE\nBarsAx94f56TuZoAqiN91qyFomNFx3InzPRMxnVx0jnvT0Lwdd8KkMaOIG+YD/is\nI19wKTakyYbnsZogy1Olhec9vn2a/iRFM9x2Fe0PonFkTGUugWhFpwIDAQABMA0G\nCSqGSIb3DQEBAgUAA4GBALtMEivPLCYATxQT3ab7/AoRhIzzKBxnki98tsX63/Do\nlbwdj2wsqFHMc9ikwFPwTtYmwHYBV4GSXiHx0bH/59AhWM1pF+NEHJwZRDmJXNyc\nAA9WjQKZ7aKQRUzkuxCkPfAyAw7xzvjoyVGM5mKf5p/AfbdynMk2OmufTqj/ZA1k\n-----END CERTIFICATE-----\n"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string/jumbo v0, "AmnetOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Connection Info:["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    .line 132
    const-class v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    .line 135
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->removeGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 138
    const-class v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;

    .line 139
    iget-boolean v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;->listened:Z

    if-nez v1, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    new-instance v4, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$2;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$2;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/biz/inner/AmnetLoggerListener;)V

    invoke-virtual {v1, v0, v4}, Lcom/alipay/mobile/common/transportext/Transport;->register(Lcom/alipay/mobile/common/transportext/amnet/Notepad;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 153
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$3;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/transportext/Transport;->activate(Lcom/alipay/mobile/common/transportext/Transport$Activating;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 167
    const-string/jumbo v0, "AmnetOperationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " AmnetHelper end init. url = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    const-string/jumbo v1, "AmnetOperationManager"

    const-string/jumbo v2, "activate error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_4
    new-instance v1, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;

    const-string/jumbo v2, "activate error"

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    :cond_5
    const-string/jumbo v0, ":443"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string/jumbo v0, "security"

    const-string/jumbo v4, "*"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public askConnState(Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$8;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$8;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V

    .line 284
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Asking;->id:J

    .line 286
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$9;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$9;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/model/AskConnStateCallback;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/Transport;->ask(Lcom/alipay/mobile/common/transportext/Transport$Asking;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 295
    return-void
.end method

.method public detect(Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;)V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$Detecting;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/Transport$Detecting;-><init>()V

    .line 338
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Detecting;->id:J

    .line 339
    new-instance v1, Lcom/alipay/mobile/common/amnet/biz/inner/NetTestAdapter;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/common/amnet/biz/inner/NetTestAdapter;-><init>(Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Detecting;->report:Lcom/alipay/mobile/common/transportext/amnet/NetTest;

    .line 340
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$10;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$10;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/Transport;->detect(Lcom/alipay/mobile/common/transportext/Transport$Detecting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 346
    return-void
.end method

.method public getAmnetAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isRCVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string/jumbo v0, "mygwrc.alipay.com:443"

    .line 309
    :goto_0
    return-object v0

    .line 303
    :cond_0
    const-string/jumbo v0, "mygw.alipay.com:443"

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 307
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MMTP_URL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAmnetDnsInfos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetDnsInfos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmnetHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetAddress()Ljava/lang/String;

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/transportext/Transport;->instance()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v0

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->activated:Z

    return v0
.end method

.method public notifyAppEvent(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)V
    .locals 3

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->convert2Altering(Lcom/alipay/mobile/common/amnet/api/model/AppEvent;)Lcom/alipay/mobile/common/transportext/Transport$Altering;

    move-result-object v0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$6;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/transportext/Transport$Altering;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/Transport;->alter(Lcom/alipay/mobile/common/transportext/Transport$Altering;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string/jumbo v1, "AmnetOperationManager"

    const-string/jumbo v2, "notifyAppEvent error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;

    const-string/jumbo v2, "notifyAppEvent error"

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyRespResult(Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;)V
    .locals 3

    .prologue
    .line 249
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$Alerting;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/Transport$Alerting;-><init>()V

    .line 250
    iget-wide v1, p1, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->id:J

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Alerting;->id:J

    .line 251
    iget-wide v1, p1, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->duration:J

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Alerting;->duration:J

    .line 252
    iget-wide v1, p1, Lcom/alipay/mobile/common/amnet/api/model/ResultFeedback;->receipt:J

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Alerting;->receipt:J

    .line 253
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$7;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$7;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/Transport;->alert(Lcom/alipay/mobile/common/transportext/Transport$Alerting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string/jumbo v1, "AmnetOperationManager"

    const-string/jumbo v2, "notifyRespResult error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;

    const-string/jumbo v2, "notifyRespResult error"

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V
    .locals 4

    .prologue
    .line 195
    new-instance v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/Transport$Posting;-><init>()V

    .line 196
    iget-object v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->body:[B

    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->body:[B

    .line 197
    iget-byte v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->channel:B

    iput-byte v0, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->channel:B

    .line 198
    iget-object v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->header:Ljava/util/Map;

    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->header:Ljava/util/Map;

    .line 199
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->id:J

    .line 200
    iget v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->reqSeqId:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->receipt:J

    .line 201
    iget-boolean v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->secret:Z

    iput-boolean v0, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->secret:Z

    .line 202
    iget-boolean v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->important:Z

    iput-boolean v0, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->important:Z

    .line 203
    iget-boolean v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->toBizSys:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/alipay/mobile/common/transportext/Transport$Posting;->nearing:Z

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$5;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$5;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/transportext/Transport$Posting;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/Transport;->post(Lcom/alipay/mobile/common/transportext/Transport$Posting;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 212
    const-string/jumbo v0, "AmnetOperationManager"

    const-string/jumbo v1, "finish post. "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string/jumbo v1, "AmnetOperationManager"

    const-string/jumbo v2, "post error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;

    const-string/jumbo v2, "post error"

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/amnet/api/exception/AmnetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final reconnect()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/alipay/mobile/common/transportext/Transport$Activating;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/Transport$Activating;-><init>()V

    .line 75
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/Transport$Activating;->id:J

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$1;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/Transport;->activate(Lcom/alipay/mobile/common/transportext/Transport$Activating;Lcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 82
    return-void
.end method

.method public final shutdownAmnet(Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;->getAmnetTransport()Lcom/alipay/mobile/common/transportext/Transport;

    move-result-object v0

    const-wide/16 v1, 0x1

    new-instance v3, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$4;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager$4;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetOperationManager;Lcom/alipay/mobile/common/amnet/api/AmnetResult;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/Transport;->inactivate(JLcom/alipay/mobile/common/transportext/Transport$Result;)V

    .line 192
    return-void
.end method
