.class final Lanetwork/channel/degrade/c;
.super Lanetwork/channel/degrade/HttpRetryListener;
.source "DegradableNetworkDegate.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lanetwork/channel/degrade/DegradableNetworkDegate;


# direct methods
.method constructor <init>(Lanetwork/channel/degrade/DegradableNetworkDegate;Lanetwork/channel/aidl/ParcelableNetworkListener;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lanetwork/channel/degrade/c;->c:Lanetwork/channel/degrade/DegradableNetworkDegate;

    iput-boolean p3, p0, Lanetwork/channel/degrade/c;->a:Z

    iput-object p4, p0, Lanetwork/channel/degrade/c;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lanetwork/channel/degrade/HttpRetryListener;-><init>(Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    return-void
.end method


# virtual methods
.method public final a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    if-ltz p1, :cond_0

    .line 293
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v1, "HTTP\u91cd\u8bd5\u6210\u529f\uff0c\u964d\u7ea7\u5141\u8bb8\u6062\u590d"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lanetwork/channel/degrade/c;->a:Z

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lanetwork/channel/degrade/c;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lanetwork/channel/degrade/util/DegradeHelper;->b(Ljava/lang/String;Z)V

    .line 300
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lanetwork/channel/degrade/HttpRetryListener;->a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z

    move-result v0

    return v0

    .line 297
    :cond_1
    iget-object v0, p0, Lanetwork/channel/degrade/c;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
