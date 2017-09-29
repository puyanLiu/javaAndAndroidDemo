.class public Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "MobilePhoneInfo.java"


# instance fields
.field public bindedMobile:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public provinceName:Ljava/lang/String;

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindedMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->bindedMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public setBindedMobile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->bindedMobile:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->cityName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->provinceName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/MobilePhoneInfo;->vendor:Ljava/lang/String;

    .line 39
    return-void
.end method
