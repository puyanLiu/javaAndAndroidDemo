.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "ShareInfoResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public shareInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getShareInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;->shareInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setShareInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;->shareInfoList:Ljava/util/List;

    .line 26
    return-void
.end method
