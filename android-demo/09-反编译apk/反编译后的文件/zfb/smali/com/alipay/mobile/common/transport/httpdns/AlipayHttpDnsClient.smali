.class public Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
.super Ljava/lang/Object;
.source "AlipayHttpDnsClient.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
.implements Lcom/alipay/mobile/common/transport/httpdns/DnsService;


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_Ahds"

.field public static final WORK_MODEL_COMPLETE:B = 0x0t

.field public static final WORK_MODEL_NO_COMPLETE:B = 0x1t

.field private static final a:Ljava/util/concurrent/locks/ReadWriteLock;

.field public static alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

.field static dnsSwitch:Z


# instance fields
.field private b:I

.field private c:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

.field private d:Z

.field public dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

.field private e:J

.field mContext:Landroid/content/Context;

.field networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->e:J

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setDnsLocalManager(Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    .line 149
    iput p2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d:Z

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->e:J

    .line 152
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "isInHosts : host is null."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getHosts()Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayHost(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isRpcCdnHost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_3
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "localHosts is null."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 317
    :try_start_0
    const-string/jumbo v0, "mobilegw.alipay.com"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mobilegwspdy.alipay.com"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 350
    :goto_0
    return-object v0

    .line 322
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MOBILEGW_PRE_SET_IPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 327
    goto :goto_0

    .line 331
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "getAllByNameFromPreset exception"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 350
    goto :goto_0

    .line 341
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 342
    goto :goto_0

    .line 346
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static dnsClientInit(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClientInit(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 96
    return-void
.end method

.method public static dnsClientInit(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;-><init>(Landroid/content/Context;I)V

    .line 105
    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setManagerListener()V

    .line 106
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDnsMessageListener;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDnsMessageListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V

    .line 107
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setContext(Landroid/content/Context;)V

    .line 110
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setApplicationName(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHosts(Ljava/lang/String;Z)V

    .line 124
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 129
    :cond_2
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->DNS_SWITCH_DEBUG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    .line 132
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "AlipayHttpDnsClient init, In the closed HTTPDNS development environment"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AlipayHttpDnsClient init, dnsSwitch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$2;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V

    goto/16 :goto_0

    .line 116
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "httpdns switch exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    return-object v0
.end method


# virtual methods
.method public addHttpDnsUpdateObserver(Ljava/util/Observer;)V
    .locals 3

    .prologue
    .line 723
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addHttpDnsUpdateObserver:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->addObserver(Ljava/util/Observer;)V

    .line 725
    return-void
.end method

.method public closeNetworkListener()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->close()V

    .line 194
    return-void
.end method

.method public deleteIP2Local()V
    .locals 3

    .prologue
    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 694
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 697
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "deleteIP2Local"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "deleteIP2Local exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteIpByHost(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->deleteIpByHost(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteLocalIpsByHost(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 665
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 667
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 668
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 670
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deleteLocalIpsByHost host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    .line 674
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "deleteLocalIpsByHost exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "host is null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->BLACK_LIST_DNS_HOST_NAME:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Blacklist host:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByNameFromHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_2

    .line 293
    :goto_0
    return-object v0

    .line 288
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 290
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_3

    .line 292
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "getAllByNameFromPreset Success."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_3
    throw v1
.end method

.method public getAllByNameFromHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getIpsByHttpDns(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    if-nez v0, :cond_2

    .line 357
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v2

    .line 358
    const-string/jumbo v3, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryLocalIPByHost host : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ,HttpdnsIP=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v1, p1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->put2Cache(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V

    move-object v2, v0

    .line 367
    :goto_1
    if-eqz v2, :cond_3

    array-length v0, v2

    if-lez v0, :cond_3

    .line 368
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "use httpdns,"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    array-length v0, v2

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 370
    const/4 v1, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 371
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v0, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    :cond_0
    const-string/jumbo v1, "is null"

    goto :goto_0

    .line 363
    :cond_1
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "queryLocalIPByHost HttpdnsIP maybe timeout."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "httpdns getAllByName exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllIPFromFile()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 594
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 595
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 596
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 598
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->string2HttpdnsIp(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v1

    .line 599
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "getAllIPFromFile exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    .line 601
    goto :goto_1
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->b:I

    return v0
.end method

.method public getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;-><init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->c:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    return-object v0
.end method

.method public getInitTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->e:J

    return-wide v0
.end method

.method public getIpInfoByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "host :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,not in the hosts,ignore... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getIpInfoByHttpDns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    goto :goto_0
.end method

.method public getIpInfosByHost(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 218
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "host :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,not in the hosts,ignore... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPsByHost(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "http_dns_last_time"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->getLonggData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->d:Z

    return v0
.end method

.method public putIPInfo2Cache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->putIPInfo2Cache(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "putResult2Cache Exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 390
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-nez v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 394
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "host :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,not in the hosts,ignore... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "PAH_SND"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 405
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    const-string/jumbo v2, "HTTP_DNS_Ahds"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryLocalIPByHost hostName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , ipInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->string2HttpdnsIp(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    const-string/jumbo v2, "HTTP_DNS_Ahds"

    const-string/jumbo v3, "httpdns \u8d85\u65f6"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    sget-object v3, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    .line 419
    goto/16 :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    const-string/jumbo v2, "HTTP_DNS_Ahds"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public queryLocalIPsByHost(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 433
    sget-boolean v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsSwitch:Z

    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 438
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "host :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,not in the hosts,ignore... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "PAH_SND"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 446
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string/jumbo v2, "HTTP_DNS_Ahds"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryLocalIPByHost hostName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , ipInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->string2HttpdnsIpArray(Ljava/lang/String;)[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v1

    .line 454
    if-nez v1, :cond_3

    .line 455
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "queryLocalIPsByHost : result is null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    const-string/jumbo v2, "HTTP_DNS_Ahds"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 459
    :cond_3
    :try_start_1
    array-length v2, v1

    if-lez v2, :cond_4

    .line 460
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    const-string/jumbo v2, "HTTP_DNS_Ahds"

    const-string/jumbo v3, "httpdns \u8d85\u65f6"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    sget-object v3, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-object v0, v1

    .line 466
    goto/16 :goto_0
.end method

.method public refreshAll()V
    .locals 2

    .prologue
    .line 236
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "refreshIPList and Conf..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(I)V

    .line 238
    return-void
.end method

.method public refreshIPListOnly()V
    .locals 3

    .prologue
    .line 242
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "refreshIPList ONLY..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(ILcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 244
    return-void
.end method

.method public registerNetworkListener(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "registerNetworkListener ..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public reloadDns()V
    .locals 2

    .prologue
    .line 615
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllIPFromFile()Ljava/util/Map;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->putIPInfo2Cache(Ljava/util/Map;)V

    .line 619
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "reloadDns success..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "reloadDns exception "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveLastUpdateTime()V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "http_dns_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;J)V

    .line 707
    return-void
.end method

.method public setApplicationNameVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 719
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setApplicationNameVersion(Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public setErrorByHost(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "host :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,not in the hosts,ignore... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->alipayHttpDnsClient:Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->networkManager:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->setNetworkContext(Landroid/content/Context;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setErrorByHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeIP2Local(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 3

    .prologue
    .line 481
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 489
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->HttpdnsIp2String(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "storeIP2Local hostName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "storeIP2Local exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public storeIp2Local(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "PAH_SND"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 513
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "storeIp2Local start..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->HttpdnsIp2String(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)Ljava/lang/String;

    move-result-object v4

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 518
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "storeIP2Local hostName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "storeIp2Local exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 520
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 522
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "storeIp2Local complete..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getHttpDnsUpdateObservable()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$HttpDnsUpdateObservable;->countObservers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateDnsTtl()V
    .locals 6

    .prologue
    .line 632
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 634
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->reloadDns()V

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 641
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTime(J)V

    .line 642
    const-wide/32 v4, 0x493e0

    add-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setTtl(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    const-string/jumbo v1, "HTTP_DNS_Ahds"

    const-string/jumbo v2, "updateDnsTtl exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    :goto_1
    return-void

    .line 644
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->storeIp2Local(Ljava/util/Map;)V

    .line 645
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "updateDnsTtl complete..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :cond_3
    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "updateDnsTtl failure..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateIp2CacheAndFile(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->storeIp2Local(Ljava/util/Map;)V

    .line 539
    return-void

    .line 536
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->dnsClient:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->updateIPInfo2Cache(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "HTTP_DNS_Ahds"

    const-string/jumbo v1, "updateIPInfo2Cache Exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
