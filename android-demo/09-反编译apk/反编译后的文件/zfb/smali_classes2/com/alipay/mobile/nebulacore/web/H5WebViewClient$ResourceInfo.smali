.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field public html:Z

.field public method:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public start:J

.field public statusCode:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->method:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->method:Ljava/lang/String;

    .line 92
    iput-wide p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$ResourceInfo;->start:J

    .line 93
    return-void
.end method
