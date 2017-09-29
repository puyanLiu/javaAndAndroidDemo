.class public Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
.super Lcom/alipay/mobilechat/biz/emotion/rpc/ToString;
.source "EmotionPackageBriefVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public flag:I

.field public gmtCreate:Ljava/lang/String;

.field public iconFid:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageFid:Ljava/lang/String;

.field public packageId:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public shortDesc:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/emotion/rpc/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->flag:I

    return v0
.end method

.method public getIconFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->iconFid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageFid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->shortDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->state:I

    return v0
.end method

.method public setFlag(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->flag:I

    .line 73
    return-void
.end method

.method public setIconFid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->iconFid:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPackageFid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageFid:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->price:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setShortDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->shortDesc:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->state:I

    .line 81
    return-void
.end method
