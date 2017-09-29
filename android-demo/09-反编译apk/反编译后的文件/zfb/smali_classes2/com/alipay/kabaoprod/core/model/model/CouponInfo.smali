.class public Lcom/alipay/kabaoprod/core/model/model/CouponInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "CouponInfo.java"


# instance fields
.field public activeDate:Ljava/lang/String;

.field public cardPrice:D

.field public couponBalance:D

.field public couponId:Ljava/lang/String;

.field public couponName:Ljava/lang/String;

.field public expiredDate:Ljava/lang/String;

.field public memo:Ljava/lang/String;

.field public urlType:Ljava/lang/String;

.field public usingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->activeDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardPrice()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->cardPrice:D

    return-wide v0
.end method

.method public getCouponBalance()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->couponBalance:D

    return-wide v0
.end method

.method public getCouponId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->couponId:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->couponName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->urlType:Ljava/lang/String;

    return-object v0
.end method

.method public getUsingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->usingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setActiveDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->activeDate:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCardPrice(D)V
    .locals 0

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->cardPrice:D

    .line 53
    return-void
.end method

.method public setCouponBalance(D)V
    .locals 0

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->couponBalance:D

    .line 65
    return-void
.end method

.method public setCouponId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->couponId:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCouponName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->couponName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->expiredDate:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->memo:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUrlType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->urlType:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setUsingUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/CouponInfo;->usingUrl:Ljava/lang/String;

    .line 113
    return-void
.end method
