.class public Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;
.super Lcom/alipay/mobilechat/biz/emotion/rpc/ToString;
.source "EmotionModelVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public emotionFid:Ljava/lang/String;

.field public emotionId:Ljava/lang/String;

.field public gifPreviewIndex:I

.field public gotoUrl:Ljava/lang/String;

.field public hasGif:Z

.field public localPath:Ljava/lang/String;

.field public op:Ljava/lang/String;

.field public packageId:Ljava/lang/String;

.field public resourceId:I

.field public shortCut:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/emotion/rpc/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 51
    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    .line 60
    goto :goto_0
.end method
