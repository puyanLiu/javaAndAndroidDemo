.class public Lcom/alipay/mobile/nebulacore/wallet/H5Engine;
.super Ljava/lang/Object;
.source "H5Engine.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/IApplicationEngine;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Engine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createApplication()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v0, "H5Engine"

    const-string/jumbo v1, "createApplication"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;-><init>()V

    return-object v0
.end method
