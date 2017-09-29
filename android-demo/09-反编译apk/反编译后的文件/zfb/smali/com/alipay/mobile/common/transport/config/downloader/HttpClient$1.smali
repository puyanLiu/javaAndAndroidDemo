.class Lcom/alipay/mobile/common/transport/config/downloader/HttpClient$1;
.super Ljava/util/zip/GZIPOutputStream;
.source "HttpClient.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient$1;->this$0:Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;

    invoke-direct {p0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient$1;->def:Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 267
    return-void
.end method
