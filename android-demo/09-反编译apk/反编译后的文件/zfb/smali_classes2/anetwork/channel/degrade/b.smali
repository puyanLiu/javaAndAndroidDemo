.class final Lanetwork/channel/degrade/b;
.super Lanetwork/channel/degrade/HttpRetryListener;
.source "DegradableNetworkDegate.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanetwork/channel/degrade/DegradableNetworkDegate;


# direct methods
.method constructor <init>(Lanetwork/channel/degrade/DegradableNetworkDegate;Lanetwork/channel/aidl/ParcelableNetworkListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lanetwork/channel/degrade/b;->b:Lanetwork/channel/degrade/DegradableNetworkDegate;

    iput-object p3, p0, Lanetwork/channel/degrade/b;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lanetwork/channel/degrade/HttpRetryListener;-><init>(Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    return-void
.end method


# virtual methods
.method public final a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z
    .locals 2

    .prologue
    .line 231
    if-ltz p1, :cond_0

    .line 233
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v1, "\u91cd\u8bd5\u6210\u529f\uff0c\u964d\u7ea7\u5141\u8bb8\u6062\u590d"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lanetwork/channel/degrade/b;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lanetwork/channel/degrade/util/DegradeHelper;->b(Ljava/lang/String;Z)V

    .line 236
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lanetwork/channel/degrade/HttpRetryListener;->a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z

    move-result v0

    return v0
.end method
