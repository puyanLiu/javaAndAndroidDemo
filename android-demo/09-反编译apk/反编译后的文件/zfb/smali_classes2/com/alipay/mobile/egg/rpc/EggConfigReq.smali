.class public Lcom/alipay/mobile/egg/rpc/EggConfigReq;
.super Ljava/lang/Object;
.source "EggConfigReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/alipay/mobile/egg/rpc/EggConfigReq;->version:J

    return-wide v0
.end method

.method public setVersion(J)V
    .locals 0

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/alipay/mobile/egg/rpc/EggConfigReq;->version:J

    .line 25
    return-void
.end method
