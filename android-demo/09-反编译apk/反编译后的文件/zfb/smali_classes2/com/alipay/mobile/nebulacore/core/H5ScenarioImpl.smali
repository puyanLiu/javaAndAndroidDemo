.class public Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;
.super Ljava/lang/Object;
.source "H5ScenarioImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Scenario;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Scenario"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/h5container/api/H5Data;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getData()Lcom/alipay/mobile/h5container/api/H5Data;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->b:Lcom/alipay/mobile/h5container/api/H5Data;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/alipay/mobile/h5container/api/H5Data;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->b:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5PrefData;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/data/H5PrefData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->b:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 37
    return-void
.end method
