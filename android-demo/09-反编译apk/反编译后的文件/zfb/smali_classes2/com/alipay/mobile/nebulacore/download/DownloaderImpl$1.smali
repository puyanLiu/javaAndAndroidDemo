.class Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;
.super Ljava/lang/Object;
.source "DownloaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;->a:Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;->c:I

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;->a:Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->a(Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;)Lcom/alipay/mobile/nebulacore/download/ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;->b:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl$1;->c:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/download/ProgressListener;->onProgress(Ljava/lang/String;I)V

    .line 285
    return-void
.end method
