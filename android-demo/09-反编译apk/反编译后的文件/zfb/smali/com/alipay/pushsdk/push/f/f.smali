.class final Lcom/alipay/pushsdk/push/f/f;
.super Ljava/lang/Object;
.source "PacketListenerDispatcher.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/f/e;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/f/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/f/f;->a:Lcom/alipay/pushsdk/push/f/e;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "push longlink packet dispatcher"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    return-object v0
.end method
