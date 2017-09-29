.class public Lcom/alipay/mobile/beehive/rpc/RpcEvent;
.super Ljava/lang/Object;
.source "RpcEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field public isNetworkException:Z

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field

.field public rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/rpc/RpcTask",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/rpc/RpcTask;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/rpc/RpcTask",
            "<TResultType;>;TResultType;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->rpcTask:Lcom/alipay/mobile/beehive/rpc/RpcTask;

    .line 22
    iput-object p2, p0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->result:Ljava/lang/Object;

    .line 23
    iput-object p3, p0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->exception:Ljava/lang/Exception;

    .line 24
    invoke-static {p3}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isNetworkException(Ljava/lang/Exception;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/rpc/RpcEvent;->isNetworkException:Z

    .line 25
    return-void
.end method
