.class public Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizType:Ljava/lang/String;

.field public userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    return-void
.end method
