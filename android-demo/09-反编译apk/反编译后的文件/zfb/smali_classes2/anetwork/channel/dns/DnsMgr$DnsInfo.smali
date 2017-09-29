.class public Lanetwork/channel/dns/DnsMgr$DnsInfo;
.super Ljava/lang/Object;
.source "DnsMgr.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/16 v0, 0x50

    iput v0, p0, Lanetwork/channel/dns/DnsMgr$DnsInfo;->c:I

    return-void
.end method
