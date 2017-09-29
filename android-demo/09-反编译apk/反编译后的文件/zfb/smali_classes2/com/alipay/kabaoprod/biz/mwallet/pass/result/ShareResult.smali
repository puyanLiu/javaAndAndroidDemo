.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "ShareResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public shareContent:Ljava/lang/String;

.field public shareImgDesc:Ljava/lang/String;

.field public shareImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
