.class public Lcom/alipay/mobile/common/amnet/api/model/DnsInfo;
.super Ljava/lang/Object;
.source "DnsInfo.java"


# instance fields
.field public dnsAddressInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/amnet/api/model/DnsAddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public domain:Ljava/lang/String;

.field public ttl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
