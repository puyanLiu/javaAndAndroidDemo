.class public Lcom/alipay/mobile/egg/rpc/EggConfigListResult;
.super Lcom/alipay/mobile/egg/rpc/BaseRpcResponse;
.source "EggConfigListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/rpc/EggConfig;",
            ">;"
        }
    .end annotation
.end field

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/egg/rpc/BaseRpcResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/rpc/EggConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->configs:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->version:J

    return-wide v0
.end method

.method public setConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/egg/rpc/EggConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->configs:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setVersion(J)V
    .locals 0

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->version:J

    .line 32
    return-void
.end method
