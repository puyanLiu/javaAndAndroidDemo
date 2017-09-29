.class final Lcom/alipay/mobile/socialsdk/bizdata/data/g;
.super Ljava/lang/Object;
.source "GroupChatMsgDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:[I

.field private final synthetic d:[Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;Ljava/util/List;[I[Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->c:[I

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->d:[Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-boolean v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->countAsUnread:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->c:[I

    aget v4, v3, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v6

    :cond_2
    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->c:[I

    aget v3, v1, v5

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v5

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->d:[Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    aput-object v0, v1, v6

    goto :goto_0

    :cond_3
    iget-wide v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    iput-wide v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_0
.end method
