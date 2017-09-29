.class Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;
.super Landroid/net/http/SslError;
.source "AndroidSslError.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/android/AndroidSslError;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidSslError;ILandroid/net/http/SslCertificate;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;->a:Lcom/alipay/mobile/nebulacore/android/AndroidSslError;

    .line 29
    invoke-direct {p0, p2, p3}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;)V

    .line 30
    return-void
.end method


# virtual methods
.method public addError(I)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryError()I
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasError(I)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "Null SslError instance"

    return-object v0
.end method
