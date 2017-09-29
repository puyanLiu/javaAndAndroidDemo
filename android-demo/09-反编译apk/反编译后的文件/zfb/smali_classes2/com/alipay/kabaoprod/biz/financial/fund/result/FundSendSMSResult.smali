.class public Lcom/alipay/kabaoprod/biz/financial/fund/result/FundSendSMSResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "FundSendSMSResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mobile:Ljava/lang/String;

.field public tairKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
