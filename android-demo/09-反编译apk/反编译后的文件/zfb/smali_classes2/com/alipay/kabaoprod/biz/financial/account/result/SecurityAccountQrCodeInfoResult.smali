.class public Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;
.source "SecurityAccountQrCodeInfoResult.java"


# instance fields
.field public extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public qrCodInfo:Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

.field public shareInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->extraInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getQrCodInfo()Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->qrCodInfo:Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    return-object v0
.end method

.method public getShareInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->shareInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->extraInfo:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public setQrCodInfo(Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->qrCodInfo:Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;

    .line 24
    return-void
.end method

.method public setShareInfoMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->shareInfoMap:Ljava/util/Map;

    .line 39
    return-void
.end method
