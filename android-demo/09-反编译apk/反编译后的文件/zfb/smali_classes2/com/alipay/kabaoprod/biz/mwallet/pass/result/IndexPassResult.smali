.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexPassResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "IndexPassResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardDetail:Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;

.field public couponDetail:Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;

.field public details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;",
            ">;"
        }
    .end annotation
.end field

.field public isMark:Z

.field public travelDetail:Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexPassResult;->isMark:Z

    .line 32
    return-void
.end method
