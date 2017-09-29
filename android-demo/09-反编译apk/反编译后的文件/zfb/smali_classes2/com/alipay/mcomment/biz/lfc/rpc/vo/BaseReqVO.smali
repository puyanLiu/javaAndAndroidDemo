.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseReqVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/VOBase;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channel:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/VOBase;-><init>()V

    const-string/jumbo v0, "RPC"

    iput-object v0, p0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseReqVO;->channel:Ljava/lang/String;

    const-string/jumbo v0, "CLIENT"

    iput-object v0, p0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/BaseReqVO;->source:Ljava/lang/String;

    return-void
.end method
