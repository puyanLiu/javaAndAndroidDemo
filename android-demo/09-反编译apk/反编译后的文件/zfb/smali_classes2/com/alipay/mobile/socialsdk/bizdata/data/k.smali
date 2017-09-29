.class final Lcom/alipay/mobile/socialsdk/bizdata/data/k;
.super Ljava/lang/Object;
.source "MobileRecordDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

.field private final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/k;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/k;->b:Ljava/util/HashMap;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/k;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "_id"

    iget-object v5, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    const-string/jumbo v3, "name"

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    const-string/jumbo v3, "headImageUrl"

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    const-string/jumbo v3, "nickName"

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    const-string/jumbo v3, "remarkName"

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    const-string/jumbo v3, "friendStatus"

    iget v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    const-string/jumbo v3, "account"

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    goto :goto_0
.end method
