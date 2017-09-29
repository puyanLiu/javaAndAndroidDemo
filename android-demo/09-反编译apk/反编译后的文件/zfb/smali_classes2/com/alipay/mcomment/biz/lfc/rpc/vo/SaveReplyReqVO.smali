.class public Lcom/alipay/mcomment/biz/lfc/rpc/vo/SaveReplyReqVO;
.super Lcom/alipay/mcomment/biz/lfc/rpc/vo/SyncUpStreamReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public content:Ljava/lang/String;

.field public feedId:Ljava/lang/String;

.field public parentReplyId:Ljava/lang/String;

.field public parentReplyUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/SyncUpStreamReqVO;-><init>()V

    return-void
.end method
