.class Lcom/alipay/mobile/nebulacore/download/HttpClient$SSLSocketFactoryEx$1;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/download/HttpClient$SSLSocketFactoryEx;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/download/HttpClient$SSLSocketFactoryEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/download/HttpClient$SSLSocketFactoryEx$1;->a:Lcom/alipay/mobile/nebulacore/download/HttpClient$SSLSocketFactoryEx;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
