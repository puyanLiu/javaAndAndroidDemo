.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/VOBase;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public memo:Ljava/lang/String;

.field public resultStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/VOBase;-><init>()V

    const-string/jumbo v0, "100"

    iput-object v0, p0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseRespVO;->resultStatus:Ljava/lang/String;

    return-void
.end method
