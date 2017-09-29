.class final Lanetwork/channel/aidl/adapter/c;
.super Lanetwork/channel/aidl/ParcelableFuture$Stub;
.source "NetworkProxy.java"


# instance fields
.field a:I

.field final synthetic b:Lanetwork/channel/aidl/adapter/NetworkProxy;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/adapter/NetworkProxy;)V
    .locals 1

    .prologue
    .line 464
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/c;->b:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;-><init>()V

    .line 465
    const/16 v0, -0xc

    iput v0, p0, Lanetwork/channel/aidl/adapter/c;->a:I

    .line 466
    return-void
.end method


# virtual methods
.method public final a(J)Lanetwork/channel/aidl/NetworkResponse;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    iget v1, p0, Lanetwork/channel/aidl/adapter/c;->a:I

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Z)Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method
