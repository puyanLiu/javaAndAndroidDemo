.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "FundInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canPurchase:Z

.field public fundCode:Ljava/lang/String;

.field public fundInstInfo:Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInstInfo;

.field public fundName:Ljava/lang/String;

.field public notices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tenThousandIncome:Ljava/lang/String;

.field public weekRate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/FundInfo;->notices:Ljava/util/Map;

    .line 32
    return-void
.end method
