.class public Lcom/alipay/mobile/nebulacore/download/ApacheClient;
.super Ljava/lang/Object;
.source "ApacheClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/download/Client;


# static fields
.field public static final TAG:Ljava/lang/String; = "ApacheClient"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/download/Connector;

.field private b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

.field private c:Lcom/alipay/mobile/nebulacore/download/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Connector;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/download/Connector;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->a:Lcom/alipay/mobile/nebulacore/download/Connector;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/download/ApacheClient;)Lcom/alipay/mobile/nebulacore/download/Connector;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->a:Lcom/alipay/mobile/nebulacore/download/Connector;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 26
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;-><init>(Ljava/lang/String;)V

    .line 28
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    .line 29
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->c:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->setListener(Lcom/alipay/mobile/nebulacore/download/TransferListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->setURL(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    .line 36
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->GET:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->setMethod(Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    .line 37
    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->size(Ljava/lang/String;)J

    move-result-wide v1

    .line 38
    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string/jumbo v2, "RANGE"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo;->setDownloadEntity(Lcom/alipay/mobile/nebulacore/download/DownloadEntity;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo;

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->a:Lcom/alipay/mobile/nebulacore/download/Connector;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/download/Connector;->setConnectInfo(Lcom/alipay/mobile/nebulacore/download/ConnectInfo;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->a:Lcom/alipay/mobile/nebulacore/download/Connector;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/Connector;->connect()Z

    move-result v0

    :goto_0
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string/jumbo v1, "ApacheClient"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->b:Lcom/alipay/mobile/nebulacore/download/DownloadEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/download/DownloadEntity;->setWritable(Z)V

    .line 54
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 55
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ApacheClient$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/download/ApacheClient$1;-><init>(Lcom/alipay/mobile/nebulacore/download/ApacheClient;)V

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/ApacheClient$1;->start()V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->a:Lcom/alipay/mobile/nebulacore/download/Connector;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/Connector;->disconnect()Z

    move-result v0

    goto :goto_0
.end method

.method public setListener(Lcom/alipay/mobile/nebulacore/download/TransferListener;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/ApacheClient;->c:Lcom/alipay/mobile/nebulacore/download/TransferListener;

    .line 69
    return-void
.end method
