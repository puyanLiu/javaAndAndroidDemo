.class public Lcom/alipay/mobile/beehive/rpc/RpcTask;
.super Ljava/lang/Object;
.source "RpcTask.java"


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
.field public params:[Ljava/lang/Object;

.field public runConfig:Lcom/alipay/mobile/beehive/rpc/RpcRunConfig;

.field public runnable:Lcom/alipay/mobile/beehive/rpc/RpcRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/rpc/RpcRunnable",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field public subscriber:Lcom/alipay/mobile/beehive/rpc/RpcSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/rpc/RpcSubscriber",
            "<TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
