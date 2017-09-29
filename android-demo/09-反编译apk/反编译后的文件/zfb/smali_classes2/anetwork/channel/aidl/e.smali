.class final Lanetwork/channel/aidl/e;
.super Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;
.source "NetworkService.java"


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/NetworkService;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/NetworkService;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lanetwork/channel/aidl/e;->a:Lanetwork/channel/aidl/NetworkService;

    invoke-direct {p0}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lanetwork/channel/aidl/RemoteNetwork;
    .locals 2

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance v0, Lanetwork/channel/http/HttpNetworkDelegate;

    iget-object v1, p0, Lanetwork/channel/aidl/e;->a:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v1}, Lanetwork/channel/aidl/NetworkService;->a(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/http/HttpNetworkDelegate;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    new-instance v0, Lanetwork/channel/degrade/DegradableNetworkDegate;

    iget-object v1, p0, Lanetwork/channel/aidl/e;->a:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v1}, Lanetwork/channel/aidl/NetworkService;->a(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/degrade/DegradableNetworkDegate;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :pswitch_1
    new-instance v0, Lanetwork/channel/anet/ANetworkDelegate;

    iget-object v1, p0, Lanetwork/channel/aidl/e;->a:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v1}, Lanetwork/channel/aidl/NetworkService;->a(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/anet/ANetworkDelegate;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
