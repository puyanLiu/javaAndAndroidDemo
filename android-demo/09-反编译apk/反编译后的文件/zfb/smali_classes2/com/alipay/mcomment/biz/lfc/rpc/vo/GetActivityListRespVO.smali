.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefInfo;",
            ">;"
        }
    .end annotation
.end field

.field public certification:Z

.field public hasmore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;-><init>()V

    return-void
.end method
