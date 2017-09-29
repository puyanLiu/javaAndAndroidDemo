.class final Lcom/alipay/mobile/socialsdk/bizdata/data/w;
.super Ljava/lang/Object;
.source "SyncChatResourceDaoOp.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/w;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/w;->b:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/SyncChatMsgModel;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/w;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SyncChatResourceDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method
