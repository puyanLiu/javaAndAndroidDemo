.class final Lcom/alipay/mobile/socialsdk/bizdata/data/f;
.super Ljava/lang/Object;
.source "ContactDataRelationDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->d:Ljava/lang/String;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "mimeType"

    const-string/jumbo v3, "5"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "data1"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "data2"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;-><init>()V

    const-string/jumbo v1, "5"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->mimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/f;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    const/4 v0, 0x0

    return-object v0
.end method
