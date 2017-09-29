.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "RemindDateResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public info:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/alipay/kabaoprod/core/model/model/RemindInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;->info:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    return-object v0
.end method

.method public setInfo(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;->info:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    .line 25
    return-void
.end method
