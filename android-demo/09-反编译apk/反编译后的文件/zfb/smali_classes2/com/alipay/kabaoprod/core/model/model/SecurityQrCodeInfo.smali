.class public Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "SecurityQrCodeInfo.java"


# instance fields
.field public qrcode:Ljava/lang/String;

.field public qrcodeImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getQrcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcode:Ljava/lang/String;

    return-object v0
.end method

.method public getQrcodeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcodeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setQrcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcode:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setQrcodeImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcodeImageUrl:Ljava/lang/String;

    .line 52
    return-void
.end method
