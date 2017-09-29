.class public Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "PassShareInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public content:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public shareType:Ljava/lang/Integer;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public weiboImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->shareType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWeiboImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->weiboImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->content:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->imgUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setShareType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->shareType:Ljava/lang/Integer;

    .line 23
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->title:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->url:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setWeiboImgUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->weiboImgUrl:Ljava/lang/String;

    .line 83
    return-void
.end method
