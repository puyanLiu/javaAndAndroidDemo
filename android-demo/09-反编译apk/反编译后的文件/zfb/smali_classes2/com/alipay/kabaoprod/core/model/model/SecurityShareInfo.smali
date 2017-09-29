.class public Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "SecurityShareInfo.java"


# instance fields
.field public content:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->imgUrl:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->targetUrl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;->title:Ljava/lang/String;

    .line 39
    return-void
.end method
