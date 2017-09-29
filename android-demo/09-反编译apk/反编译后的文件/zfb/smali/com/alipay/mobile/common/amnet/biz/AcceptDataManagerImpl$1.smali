.class Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$1;
.super Ljava/lang/Object;
.source "AcceptDataManagerImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$1;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl$1;->this$0:Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;->access$000(Lcom/alipay/mobile/common/amnet/biz/AcceptDataManagerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method
