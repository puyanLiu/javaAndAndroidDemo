.class public Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "KabaoCommonResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public success:Z

.field public weavingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/promo/MobileRedirectWeaving;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->success:Z

    .line 32
    return-void
.end method
