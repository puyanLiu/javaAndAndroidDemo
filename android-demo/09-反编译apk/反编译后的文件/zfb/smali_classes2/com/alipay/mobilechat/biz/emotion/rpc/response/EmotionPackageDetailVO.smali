.class public Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;
.super Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
.source "EmotionPackageDetailVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public author:Ljava/lang/String;

.field public bannerFid:Ljava/lang/String;

.field public copyright:Ljava/lang/String;

.field public declare:Ljava/lang/String;

.field public declareUrl:Ljava/lang/String;

.field public emotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;"
        }
    .end annotation
.end field

.field public fullDesc:Ljava/lang/String;

.field public timeLimit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;-><init>()V

    return-void
.end method
