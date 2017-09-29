.class public Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;
.super Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
.source "EmotionPackageBriefResp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public emotionPackageBriefVOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;"
        }
    .end annotation
.end field

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;-><init>()V

    return-void
.end method
