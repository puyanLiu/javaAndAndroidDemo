.class public Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;
.super Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
.source "CustomEmotionResp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public customEmotionVOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;-><init>()V

    return-void
.end method
