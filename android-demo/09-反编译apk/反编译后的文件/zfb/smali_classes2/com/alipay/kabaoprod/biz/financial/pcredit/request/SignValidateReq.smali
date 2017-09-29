.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "SignValidateReq.java"


# instance fields
.field public bornDay:Ljava/lang/String;

.field public bornMonth:Ljava/lang/String;

.field public bornYear:Ljava/lang/String;

.field public payPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBornDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->bornDay:Ljava/lang/String;

    return-object v0
.end method

.method public getBornMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->bornMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getBornYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->bornYear:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->payPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setBornDay(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->bornDay:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setBornMonth(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->bornMonth:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setBornYear(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->bornYear:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPayPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/request/SignValidateReq;->payPassword:Ljava/lang/String;

    .line 77
    return-void
.end method
