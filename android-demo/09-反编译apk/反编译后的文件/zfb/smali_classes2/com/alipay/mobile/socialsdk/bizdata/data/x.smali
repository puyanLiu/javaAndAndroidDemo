.class final Lcom/alipay/mobile/socialsdk/bizdata/data/x;
.super Ljava/lang/Object;
.source "UidLidMappingDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/x;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/x;->b:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UidLidMapping;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/UidLidMapping;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;

    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;->targetUserId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UidLidMapping;->userId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/req/model/ReqUserModel;->alipayAccount:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/UidLidMapping;->loginId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/x;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method
