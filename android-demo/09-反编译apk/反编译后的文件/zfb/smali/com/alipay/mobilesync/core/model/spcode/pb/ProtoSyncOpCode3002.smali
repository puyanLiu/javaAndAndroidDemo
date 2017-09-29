.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3002;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode3002.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3002;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    instance-of v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3002;

    return v0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3002;
    .locals 0

    .prologue
    .line 18
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
