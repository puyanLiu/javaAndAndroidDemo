.class Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;
.super Ljava/lang/Object;
.source "DownloaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;->a:Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;->a:Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->b(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;)Lcom/alipay/mobile/nebulacore/download/StatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$2;->c:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/download/StatusListener;->onStatus(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V

    .line 321
    return-void
.end method
